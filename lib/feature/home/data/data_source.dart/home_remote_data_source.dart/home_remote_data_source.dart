import 'package:circle/constant.dart';
import 'package:circle/core/function/save_data.dart';
import 'package:circle/core/utils/api_service.dart';
import 'package:circle/feature/home/data/model/category_model/category_model.dart';
import 'package:circle/feature/home/domain/entity/category_entity/category_entity.dart';
import 'package:circle/feature/home/domain/entity/slider_entity/slider_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<SliderEntity>> fetchImageSlider();
  Future<List<CategoryEntity>> fetchCategory();
  Future<List<CategoryEntity>> fetchLastProduct();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  static const endPointSlider = 'home/slider';
  static const endPointCategory = 'home/categories';
  static const endPointLastProduct = 'home/latestProducts';

  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<SliderEntity>> fetchImageSlider() async {
    // طلب البيانات من API
    var response = await apiService.get(endPoint: endPointSlider);

    // تحويل البيانات إلى قائمة من SliderEntity
    List<SliderEntity> sliderList = getSliderList(response);

    return sliderList;
  }

  // دالة لتحويل الاستجابة إلى قائمة SliderEntity
  List<SliderEntity> getSliderList(Map<String, dynamic> response) {
    List<SliderEntity> sliders = [];
    for (var item in response['data']['slider']) {
      sliders.add(SliderEntity(image: item['image'] ?? ''));
    }
    return sliders;
  }

  @override
  Future<List<CategoryEntity>> fetchCategory() async {
    final response = await apiService.get(endPoint: endPointCategory);
    List<CategoryEntity> elements = getCategoryList(response);
    saveData(elements, kHomeBox);
    return elements;
  }

  List<CategoryEntity> getCategoryList(Map<String, dynamic> response) {
    List<CategoryEntity> elements = [];
    for (var item in response["data"]) {
      elements.add(CategoryModel.fromJson(item));
    }
    saveData(elements, kHomeBox);
    return elements;
  }

  @override
  Future<List<CategoryEntity>> fetchLastProduct() async {
    final data = await apiService.get(endPoint: endPointLastProduct);
    List<CategoryEntity> elements = getCategoryList(data);
    saveData(elements, kHomeBox);

    return elements;
  }
}

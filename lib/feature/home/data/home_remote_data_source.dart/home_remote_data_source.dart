import 'package:circle/core/utils/api_service.dart';
import 'package:circle/feature/home/data/image_slider/image_slider.dart';
import 'package:circle/feature/loggin/data/model/login/data.request.dart';
import 'package:flutter/material.dart';

class HomeRemoteDataSource {
  static const endPoint = 'home/slider';
  final ApiService apiService;

  HomeRemoteDataSource(this.apiService);

  Future<ImageSlider> fetchImageSlider() async {
    try {
      var response = await apiService.get(endPoint: endPoint);

      return ImageSlider.fromJson(response);
      // إرجاع قائمة السلايدر
      // إذا لم توجد، إرجع قائمة فارغة
    } catch (e) {
      debugPrint("Error fetching sliders: $e");
      rethrow;
    }
  }
}

import 'package:circle/feature/home/presentation/manager/fetch_category/fetch_category_cubit.dart';
import 'package:circle/feature/home/presentation/views/widgets/sections_catigory_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionsCatigoryBloc extends StatelessWidget {
  const SectionsCatigoryBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCategoryCubit, FetchCategoryState>(
      builder: (context, state) {
        if (state is FetchCategoryLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FetchCategorySuccuss) {
          return SectionsCatigory(
            item: state.elements, // تأكد من صحة اسم المتغير
          );
        } else if (state is FetchCategoryFailure) {
          return Center(child: Text(state.errorMessage)); // استخدام رسالة الخطأ
        }
        return const SizedBox(); // حالة افتراضية (مثل إذا كانت البيانات غير موجودة)
      },
    );
  }
}

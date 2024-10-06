import 'package:circle/feature/home/presentation/manager/cubit/fetch_slider_cubit_cubit.dart';
import 'package:circle/feature/home/presentation/views/widgets/custom_list_view_Slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListViewSliderBlocBuilder extends StatelessWidget {
  const CustomListViewSliderBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSliderCubit, FetchSliderCubitState>(
      builder: (context, state) {
        if (state is FetchSliderCubitSuccess) {
          return CustomListViewSlider(
            sliderImage: state.item,
          );
        } else if (state is FetchSliderCubitFailure) {
          return Text(state.errorMessage);
        }
        return const Text('error');
      },
    );
  }
}

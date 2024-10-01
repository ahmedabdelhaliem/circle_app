import 'package:cached_network_image/cached_network_image.dart';
import 'package:circle/feature/home/data/image_slider/image_slider.dart';
import 'package:flutter/material.dart';

class CustomListViewSlider extends StatelessWidget {
  const CustomListViewSlider({super.key, required this.sliderImage});

  final ImageSlider sliderImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 171.5,
        width: 343,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:
              sliderImage.data?.slider?.length ?? 0, // التعامل مع nullable list
          itemBuilder: (BuildContext context, int index) {
            final slider =
                sliderImage.data?.slider?[index].image; // الوصول إلى كل عنصر
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CustomSlider(image: slider), // تمرير الصورة المناسبة
            );
          },
        ),
      ),
    );
  }
}

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.image,
  });

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171.5,
      width: 343,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: CachedNetworkImage(
        imageUrl: image!,
        fit: BoxFit.fill,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}

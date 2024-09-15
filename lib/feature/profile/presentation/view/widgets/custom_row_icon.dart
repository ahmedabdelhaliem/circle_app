import 'package:circle/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomRowIcon extends StatelessWidget {
  const CustomRowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(.3),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  child: Image.asset(
                    Assets.box,
                    height: 48,
                    width: 48,
                  ),
                ),
                const Text('طلبان'),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  child: Image.asset(
                    Assets.favorit,
                    height: 48,
                    width: 48,
                  ),
                ),
                const Text('اعجبني'),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  child: Image.asset(
                    Assets.star,
                    height: 48,
                    width: 48,
                  ),
                ),
                const Text('النقاط'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

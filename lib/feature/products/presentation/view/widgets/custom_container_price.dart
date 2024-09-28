import 'package:circle/constant.dart';
import 'package:circle/core/utils/assets.dart';
import 'package:circle/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomContainerPrice extends StatelessWidget {
  const CustomContainerPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kGray,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 52,
              width: 327,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Image.asset(
                    Assets.price,
                    height: 18,
                    width: 17,
                  ),
                  const Text('السعر'),
                  const Spacer(),
                  Text('15 ح.م', // السعر
                      style: Styles.textStyle16.copyWith(color: kRed)),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.minimize_outlined)),
              Container(
                height: 52,
                width: 199,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text('0', // السعر
                      style: Styles.textStyle16),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ],
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:circle/constant.dart'; // Assuming kRed is defined here

class CustomBottomAppBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemSelected;

  const CustomBottomAppBar({
    super.key,
    required this.currentIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.category_rounded,
              color: currentIndex == 0
                  ? kRed
                  : Colors.grey, // تغيير اللون عند الاختيار
            ),
            onPressed: () => onItemSelected(0),
          ),
          IconButton(
            icon: Icon(
              Icons.home,
              color: currentIndex == 1
                  ? kRed
                  : Colors.grey, // تغيير اللون عند الاختيار
            ),
            onPressed: () => onItemSelected(1),
          ),
          IconButton(
            icon: Icon(
              Icons.my_location,
              color: currentIndex == 2
                  ? kRed
                  : Colors.grey, // تغيير اللون عند الاختيار
            ),
            onPressed: () => onItemSelected(2),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: currentIndex == 3
                  ? kRed
                  : Colors.grey, // تغيير اللون عند الاختيار
            ),
            onPressed: () => onItemSelected(3),
          ),
        ],
      ),
    );
  }
}

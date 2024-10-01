import 'package:circle/feature/home/presentation/views/widgets/custom_bottom_appber.dart';
import 'package:circle/feature/home/presentation/views/widgets/custom_list_view_Slider_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:circle/feature/home/presentation/views/widgets/New_Products_grid_view.dart';
import 'package:circle/feature/home/presentation/views/widgets/custom_row_section.dart';
import 'package:circle/feature/home/presentation/views/widgets/sections_catigory_grid_view.dart';
import 'package:circle/feature/home/presentation/views/widgets/custom_appbar.dart';
import 'package:circle/feature/home/presentation/views/widgets/custom_list_view_Slider.dart';
import 'package:circle/feature/home/presentation/views/widgets/searchtext_feild.dart';
// Assuming kRed is defined here

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int currentIndex = 0;

  void _onItemSelected(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(
        currentIndex: currentIndex,
        onItemSelected: _onItemSelected,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          CustomAppbar(),
          SizedBox(height: 16),
          SearchTextField(),
          SizedBox(height: 16),
          SizedBox(
            height: 200,
            child: CustomListViewSliderBlocBuilder(),
          ),
          CustomRowSection(text: 'الاقسام'),
          SizedBox(height: 12),
          SectionsCatigory(),
          CustomRowSection(text: 'أحدث المنتجات'),
          SizedBox(height: 12),
          NewProductsGridView(),
        ],
      ),
    );
  }
}

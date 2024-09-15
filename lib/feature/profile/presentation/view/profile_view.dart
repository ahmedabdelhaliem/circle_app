import 'package:circle/feature/home/presentation/views/widgets/custom_bottom_appber.dart';
import 'package:circle/feature/profile/presentation/view/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
            currentIndex: 3, onItemSelected: _onItemSelected),
        body: const ProfileViewBody());
  }
}

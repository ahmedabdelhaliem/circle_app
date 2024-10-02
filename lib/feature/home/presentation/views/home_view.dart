import 'package:circle/core/utils/api_service.dart';
import 'package:circle/core/utils/locator.dart';
import 'package:circle/feature/home/data/model/home_remote_data_source.dart/home_remote_data_source.dart';
import 'package:circle/feature/home/data/repo/home_repo_impl.dart';
import 'package:circle/feature/home/presentation/manager/cubit/fetch_slider_cubit_cubit.dart';
import 'package:circle/feature/home/presentation/views/widgets/home_view_body.dart';
import 'package:circle/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const HomeViewBody();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery/layout/cubit/cubit.dart';
import 'package:lottery/layout/cubit/states.dart';
import 'package:lottery/layout/lotteryLayout.dart';
import 'package:lottery/modules/dropdownbuttonfield.dart';
import 'package:lottery/modules/homepage/homePage22.dart';

import 'package:lottery/modules/login/cubit/logincubit.dart';
import 'package:lottery/modules/searchPage.dart';

import 'package:lottery/shared/network/dio_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => LotteryCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => LoginCubit(),
        ),
      ],
      child: BlocConsumer<LotteryCubit, LotteryStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MyDropdownTextField(),
          );
        },
      ),
    );
  }
}

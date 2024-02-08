import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery/layout/cubit/cubit.dart';
import 'package:lottery/layout/cubit/states.dart';

import 'package:lottery/modules/shop_login/cubit_login/cubit.dart';
import 'package:lottery/modules/shop_login/shop_login_screen.dart';

import 'package:lottery/shared/network/dio_helper.dart';

import 'modules/homePage6.dart';

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
          create: (BuildContext context) => LotteryLoginCubit(),
        ),
      ],
      child: BlocConsumer<LotteryCubit, LotteryStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false, home: LotteryLoginScreen());
        },
      ),
    );
  }
}

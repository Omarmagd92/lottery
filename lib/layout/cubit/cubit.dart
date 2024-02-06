import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery/layout/cubit/states.dart';
import 'package:lottery/modules/textPage2.dart';

import '../../modules/accountPage.dart';
import '../../modules/homepage/homePage1.dart';

import '../../modules/textPage.dart';

class LotteryCubit extends Cubit<LotteryStates> {
  LotteryCubit() : super(Lotteryinitialstates());
  static LotteryCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  String selectedItem = "01/02/2024";
  List<String> items = [
    "01/02/2024",
    "02/02/2024",
    "03/02/2024",
    "04/02/2024",
    "05/02/2024"
  ];
  List<Widget> screens = [HomePage(), TextPage(), TextPage2(), AccountPage()];
  void changeBottom(int index) {
    currentIndex = index;
    emit(LotteryChangeBotNavStates());
  }

  void changeMenuItem(String? newItem) {
    selectedItem = newItem!;
    emit(LotteryChangeMenuItemStates());
  }
}

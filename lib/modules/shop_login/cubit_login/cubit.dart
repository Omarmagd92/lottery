import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery/modules/shop_login/cubit_login/statues.dart';

import '../../../models/shop_model.dart';
import '../../../shared/components/constants.dart';
import '../../../shared/network/dio_helper.dart';
import '../../../shared/network/end_points.dart';

class LotteryLoginCubit extends Cubit<LotteryLoginStatues> {
  LotteryLoginCubit() : super(LotteryLoginInitialStatue());

  static LotteryLoginCubit get(context) => BlocProvider.of(context);

  LotteryLoginModel? loginModel;
  bool checkedvalue = false;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LotteryLoginLoadingStatue());

    DioHelper.postData(url: LOGIN, data: {
      'loginname': email,
      'password': password,
      'roleid': 0,
    }).then((value) {
      print(value.data);
      print("status code: ${value.statusCode}");
      loginModel = LotteryLoginModel.fromJson(value.data);
      //  print(loginModel.status);
      print(loginModel!.message);
      // print(loginModel.data?.token);
      emit(LotteryLoginSuccessStatue(loginModel!));
    }).catchError((error) {
      print(error.toString());
      emit(LotteryLoginErrorStatue(error.toString()));
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(LotteryChangePasswordStatue());
  }
}

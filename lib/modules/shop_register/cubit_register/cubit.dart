import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery/modules/shop_register/cubit_register/statue.dart';

import '../../../../shared/network/end_points.dart';

import '../../../models/shop_model.dart';
import '../../../shared/network/dio_helper.dart';

class LotteryRegisterCubit extends Cubit<LotteryRegisterStatues> {
  LotteryRegisterCubit() : super(LotteryRegisterInitialStatue());

  static LotteryRegisterCubit get(context) => BlocProvider.of(context);

  LotteryLoginModel? loginModel;

  void userRegister({
    required String email,
    required String name,
    required String phone,
    required String password,
  }) {
    emit(LotteryRegisterLoadingStatue());
    DioHelper.postData(url: REGISTER, data: {
      'loginname': name,
      'email': email,
      'password': password,
      'phone': phone,
    }).then((value) {
      print(value.data);
      loginModel = LotteryLoginModel.fromJson(value.data);
      //  print(loginModel.status);
      // print(loginModel.message);
      print(loginModel!.data?.token);
      emit(LotteryRegisterSuccessStatue(loginModel!));
    }).catchError((error) {
      print(error.toString());
      emit(LotteryRegisterErrorStatue(error.toString()));
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(LotteryAddPasswordStatue());
  }
}

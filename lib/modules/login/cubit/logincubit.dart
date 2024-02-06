import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loginstates.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);

  bool checkedvalue = false;

  void login({required String email, required String password}) {
    emit(LoginLoadingState());

    // Perform the login logic here
    // Simulating a successful login for demonstration purposes
  }
}

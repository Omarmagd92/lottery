import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery/modules/homepage/homePage1.dart';
import 'package:lottery/modules/shop_login/shop_login_screen.dart';

import '../../../shared/components/components.dart';
import '../../../shared/components/constants.dart';

import '../../layout/cubit/cubit.dart';

import '../../layout/lotteryLayout.dart';
import '../shop_login/cubit_login/cubit.dart';
import 'cubit_register/cubit.dart';
import 'cubit_register/statue.dart';

// ignore: must_be_immutable
class LotteryRegisterScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LotteryRegisterCubit(),
      child: BlocConsumer<LotteryRegisterCubit, LotteryRegisterStatues>(
        listener: (context, state) {
          if (state is LotteryRegisterSuccessStatue) {
            if (state.loginModel.status) {
              print(state.loginModel.message);
              print(state.loginModel.data!.token);
            } else {
              print(state.loginModel.message!);
              showToast(
                text: state.loginModel.message!,
                state: ToastStates.ERROR,
              );
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text("sign in",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultFormField(
                          context: context,
                          type: TextInputType.name,
                          keyboardType: TextInputType.name,
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'Name must not be Empty !!';
                            }
                          },
                          controller: nameController,
                          prefix: Icons.person,
                          labelText: "User Name",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultFormField(
                          context: context,
                          type: TextInputType.emailAddress,
                          keyboardType: TextInputType.emailAddress,
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'Email must not be Empty !!';
                            }
                          },
                          controller: emailController,
                          prefix: Icons.email_outlined,
                          labelText: "Email address",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultFormField(
                          context: context,
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          type: TextInputType.text,
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'phone must not be empty';
                            }
                          },
                          labelText: "Phone",
                          prefix: Icons.phone,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultFormField(
                          context: context,
                          type: TextInputType.visiblePassword,
                          keyboardType: TextInputType.visiblePassword,
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'password is too short !!';
                            }
                          },
                          controller: passwordController,
                          suffix: LotteryRegisterCubit.get(context).suffix,
                          isPassword:
                              LotteryRegisterCubit.get(context).isPassword,
                          suffixPressed: () {
                            LotteryRegisterCubit.get(context)
                                .changePasswordVisibility();
                          },
                          prefix: Icons.lock_outline,
                          labelText: "Password",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultFormField(
                          context: context,
                          type: TextInputType.visiblePassword,
                          keyboardType: TextInputType.visiblePassword,
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'password is too short !!';
                            }
                          },
                          controller: passwordController,
                          suffix: LotteryRegisterCubit.get(context).suffix,
                          isPassword:
                              LotteryRegisterCubit.get(context).isPassword,
                          suffixPressed: () {
                            LotteryRegisterCubit.get(context)
                                .changePasswordVisibility();
                          },
                          prefix: Icons.lock_outline,
                          labelText: "Password",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "already account?",
                                style: TextStyle(
                                    color: Color(0xff8A8A8A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LotteryLoginScreen()));
                              },
                              padding: EdgeInsets.zero,
                              minWidth: 0,
                              child: Text("log in",
                                  style: TextStyle(color: Colors.blueAccent)),
                            )
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(),
                          child: Container(
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  LotteryRegisterCubit.get(context)
                                      .userRegister(
                                          name: nameController.text,
                                          phone: phoneController.text,
                                          email: emailController.text,
                                          password: passwordController.text);
                                }
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LotteryLayout()));
                              },
                              child: Text(
                                "sign in",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        if (state is LotteryRegisterLoadingStatue)
                          LinearProgressIndicator(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
/* Center(
                          child: defaultTextButton(
                            text: "sign up",
                            style: TextStyle(color: Colors.purple.shade400),
                            isUpperCase: true,
                            function: () {
                              if (formKey.currentState!.validate()) {
                                LotteryRegisterCubit.get(context).userRegister(
                                    name: nameController.text,
                                    phone: phoneController.text,
                                    email: emailController.text,
                                    password: passwordController.text);
                              }
                            },
                          ),
                        ),*/

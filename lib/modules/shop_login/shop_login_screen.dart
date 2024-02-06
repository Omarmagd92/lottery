import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery/modules/shop_register/register1.dart';

import '../../../shared/components/components.dart';
import '../../../shared/components/constants.dart';

import '../../layout/cubit/cubit.dart';

import '../../layout/lotteryLayout.dart';
import '../login/cubit/logincubit.dart';
import '../shop_register/shop_register_screen.dart';
import 'cubit_login/cubit.dart';
import 'cubit_login/statues.dart';

class LotteryLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    var formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (BuildContext context) => LotteryLoginCubit(),
      child: BlocConsumer<LotteryLoginCubit, LotteryLoginStatues>(
        listener: (context, state) {
          if (state is LotteryLoginSuccessStatue) {
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
            appBar: AppBar(
              actions: [
                TextButton(
                  onPressed: () {
                    navigateAndFinish(context, LotteryLayout());
                  },
                  child: Text('Welcome on Board'),
                ),
              ],
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 38,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Don\'t have an account?',
                            ),
                            defaultTextButton(
                              function: () {
                                navigateTo(
                                  context,
                                  LotteryRegisterScreen(),
                                );
                              },
                              text: 'register',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
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
                            borderSide: BorderSide(width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0),
                          ),
                        ),
                        SizedBox(
                          height: 30,
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
                          suffix: LotteryLoginCubit.get(context).suffix,
                          onSubmit: (value) {
                            if (formKey.currentState!.validate()) {
                              LotteryLoginCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passwordController.text);
                            }
                          },
                          // onChange: (value)
                          //    {print(value!);},
                          isPassword: LotteryLoginCubit.get(context).isPassword,
                          suffixPressed: () {
                            LotteryLoginCubit.get(context)
                                .changePasswordVisibility();
                          },

                          prefix: Icons.lock_outline,
                          labelText: "Password",

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: CheckboxListTile(
                                    title: Text("remember"),
                                    value: LoginCubit.get(context).checkedvalue,
                                    onChanged: (newValue) {
                                      LoginCubit.get(context).checkedvalue =
                                          newValue!;
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                ),
                                MaterialButton(
                                  padding: EdgeInsets.zero,
                                  minWidth: 0,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Register1Page()));
                                  },
                                  child: Text("forget passwork?",
                                      style:
                                          TextStyle(color: Colors.blueAccent)),
                                )
                              ]),
                        ),
                        Center(
                          child: ConditionalBuilder(
                            condition: State is! LotteryLoginLoadingStatue,
                            builder: (context) => defaultTextButton(
                              text: "Login",
                              style: TextStyle(color: Colors.purple.shade400),
                              isUpperCase: true,
                              function: () {
                                if (formKey.currentState!.validate()) {
                                  LotteryLoginCubit.get(context).userLogin(
                                      email: emailController.text,
                                      password: passwordController.text);
                                }
                              },
                            ),
                            fallback: (context) =>
                                Center(child: CircularProgressIndicator()),
                          ),
                        ),
                        if (state is LotteryLoginLoadingStatue)
                          LinearProgressIndicator(),
                        SizedBox(
                          height: 15,
                        ),
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

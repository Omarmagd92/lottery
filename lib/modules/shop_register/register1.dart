import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery/modules/shop_register/register2.dart';

import '../login/cubit/logincubit.dart';
import '../login/cubit/loginstates.dart';

class Register1Page extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccessState) {
              // Navigate to the next screen on successful login
              // For now, we'll just print a message
              print('Login successful!');
            }
          },
          builder: (context, state) {
            return Padding(
                padding: EdgeInsets.all(40),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(children: [
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text("Forgot passwork",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: 'Enter your email',
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xffD5D5D5), width: 2)),
                          )),
                      SizedBox(height: 10),
                      Container(
                        width: 330,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register2Page()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "sign in",
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ));
          },
        ),
      ),
    );
  }
}

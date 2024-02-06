import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login/cubit/logincubit.dart';
import '../login/cubit/loginstates.dart';

class SignPage extends StatelessWidget {
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
              print('sign successful!');
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
                        child: Text("sign in",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: 'Enter your account',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xffD5D5D5), width: 2)),
                          )),
                      SizedBox(height: 10),
                      TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: 'Enter your email',
                            prefixIcon: Icon(Icons.mail_outline),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xffD5D5D5))),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: 'enter your phone number',
                            prefixIcon: Icon(Icons.phone_android),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xffD5D5D5), width: 2)),
                          )),
                      SizedBox(height: 10),
                      TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: 'your password ',
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.visibility_off),
                              onPressed: () {
                                _controller.clear();
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xffD5D5D5))),
                          )),
                      SizedBox(height: 10),
                      TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: 'confirm your password',
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.visibility_off),
                              onPressed: () {
                                _controller.clear();
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xffD5D5D5))),
                          )),
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
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            minWidth: 0,
                            child: Text("log in",
                                style: TextStyle(color: Colors.blueAccent)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 330,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: ElevatedButton(
                          onPressed: () {},
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

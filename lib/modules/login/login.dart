import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/logincubit.dart';
import 'cubit/loginstates.dart';

class LoginPage extends StatelessWidget {
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
                        child: Text("LOG in",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w600)),
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "already amember?",
                              style: TextStyle(
                                  color: Color(0xff8A8A8A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          MaterialButton(
                            minWidth: 0,
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            child: Text("sign in",
                                style: TextStyle(color: Colors.blueAccent)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            prefixIcon: Icon(Icons.person_outline_rounded),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    color: Color(0xffD5D5D5), width: 2)),
                          )),
                      SizedBox(height: 10),
                      TextFormField(
                          controller: _controller,
                          decoration: InputDecoration(
                            labelText: 'password',
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                _controller.clear();
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xffD5D5D5))),
                          )),
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
                                onPressed: () {},
                                child: Text("forget passwork?",
                                    style: TextStyle(color: Colors.blueAccent)),
                              )
                            ]),
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

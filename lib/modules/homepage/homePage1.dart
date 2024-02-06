import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery/layout/cubit/cubit.dart';
import 'package:lottery/layout/cubit/states.dart';
import 'package:lottery/modules/tab2.dart';

import '../tab1.dart';
import '../tab3.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<String> dropdownItems = ['Item 1', 'Item 2', 'Item 3'];
  String selectedItem = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LotteryCubit, LotteryStates>(
        builder: (context, state) {
          return Container(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tab1()));
                              },
                              child: Text(
                                "Miền Bắc",
                                style: TextStyle(color: Color(0xff8A8A8A)),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tab2()));
                              },
                              child: Text(
                                "Miền Bắc",
                                style: TextStyle(color: Color(0xff8A8A8A)),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Tab3()));
                              },
                              child: Text(
                                "Miền Bắc",
                                style: TextStyle(color: Color(0xff8A8A8A)),
                              )),
                        ],
                      ),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      borderRadius: BorderRadius.circular(10),
                      value:
                          BlocProvider.of<LotteryCubit>(context).selectedItem,
                      onChanged:
                          BlocProvider.of<LotteryCubit>(context).changeMenuItem

                      // This function will be called when a new item is selected

                      ,
                      items: BlocProvider.of<LotteryCubit>(context)
                          .items
                          .map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        );
                      }).toList(),
                    ),
                    Container(
                      color: Color(0xffF1F1F1),
                      child: Row(
                        children: [
                          Text("Ngày xổ ",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(),
                          Container(
                              alignment: Alignment.center,
                              height: 40,
                              child: Text(
                                  BlocProvider.of<LotteryCubit>(context)
                                      .selectedItem,
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600))),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 28,
                            height: 28,
                            child: Text("Giải ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 12)),
                            decoration: BoxDecoration()),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("Kết quả ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        )
                      ],
                    ),
                    Divider(thickness: 1, color: Color(0xffF1F1F1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width: 28,
                            height: 28,
                            child: Text("DB",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600)),
                            decoration:
                                BoxDecoration(color: Color(0xffFF3E3E))),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red)),
                          ),
                        )
                      ],
                    ),
                    Divider(thickness: 1, color: Color(0xffF1F1F1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width: 28,
                            height: 28,
                            child: Text("1st",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600)),
                            decoration:
                                BoxDecoration(color: Color(0xffFDBA37))),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        )
                      ],
                    ),
                    Divider(thickness: 1, color: Color(0xffF1F1F1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width: 28,
                            height: 28,
                            child: Text("2nd",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600)),
                            decoration:
                                BoxDecoration(color: Color(0xff3E80FF))),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ],
                    ),
                    Divider(thickness: 1, color: Color(0xffF1F1F1)),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("3rd",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600)),
                          Container(
                            height: 96,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 96,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 96,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 1, color: Color(0xffF1F1F1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 28,
                          height: 28,
                          child: Text("4th",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ],
                    ),
                    Divider(thickness: 1, color: Color(0xffF1F1F1)),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("5th",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600)),
                          Container(
                            height: 96,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 96,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 96,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 36,
                                    color: Color(0xffF1F1F1),
                                    child: Text("00000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 1, color: Color(0xffF1F1F1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 28,
                          height: 28,
                          child: Text("6th",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ],
                    ),
                    Divider(thickness: 1, color: Color(0xffF1F1F1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 28,
                          height: 28,
                          child: Text("7th",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 36,
                            color: Color(0xffF1F1F1),
                            child: Text("00000",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ));
        },
        listener: (context, state) {});
  }
}

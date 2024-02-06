import 'package:flutter/material.dart';
import 'package:lottery/modules/homepage/homePage22.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            iconTheme: (IconThemeData(color: Colors.black)),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "Bộ lọc",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage22()));
                  },
                  child: Text(
                    "Xong",
                    style: TextStyle(color: Colors.black),
                  )),
            ]),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 20),
            Text(
              "Miền Bắc",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                color: Color(0xffF1F1F1),
                border: Border.all(color: Color(0xffF1F1F1)),
              ),
              child: Text("Miền Bắc",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Color(0xff6D6D6D))),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Miền Trung",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 86,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Text("Huế",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6D6D6D))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Text("Phú Yên",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6D6D6D))),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Miền Nam",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Text("Miền Bắc",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6D6D6D))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Text("Miền Bắc",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6D6D6D))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Text("Miền Bắc",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6D6D6D))),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "VIP",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Text("Miền Bắc",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6D6D6D))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    border: Border.all(color: Color(0xffF1F1F1)),
                  ),
                  child: Text("Miền Bắc",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6D6D6D))),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: BoxDecoration(
                color: Color(0xffF1F1F1),
                border: Border.all(color: Color(0xffF1F1F1)),
              ),
              child: Text("Miền Bắc",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Color(0xff6D6D6D))),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}

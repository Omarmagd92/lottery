import 'package:flutter/material.dart';

class SearchPage2 extends StatelessWidget {
  const SearchPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff7B61FF), Color(0xff5398FF)])),
      child: SafeArea(
        child: Column(children: [
          SizedBox(height: 100),
          Text(
            '''Chính xác
Nhanh chóng
Tiện lợi''',
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 16, top: 16, left: 16),
                  width: 163,
                  height: 162,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.pie_chart),
                        Spacer(),
                        Text("Tra cứu xác xuất",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                            )),
                        SizedBox(height: 5),
                        Text("Tỉ lệ, xác xuất",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                color: Color(0xff6D6D6D),
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ]),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(bottom: 16, top: 16, left: 16),
                  width: 163,
                  height: 162,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.pie_chart),
                        Spacer(),
                        Text("Tra cứu xác xuất",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                            )),
                        SizedBox(height: 5),
                        Text("Tỉ lệ, xác xuất",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                color: Color(0xff6D6D6D),
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ]),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

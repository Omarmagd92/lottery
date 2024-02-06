import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../layout/cubit/cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Set the desired height
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            width: double.infinity,

            child: Text('Tra Cứu Kết Quả Xổ Số',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),

            // Other AppBar properties and widgets
          ),
        ),
      ),
      body: Column(children: [
        DropdownButton<String>(
          isExpanded: true,
          borderRadius: BorderRadius.circular(10),
          value: BlocProvider.of<LotteryCubit>(context).selectedItem,
          onChanged: BlocProvider.of<LotteryCubit>(context).changeMenuItem

          // This function will be called when a new item is selected

          ,
          items:
              BlocProvider.of<LotteryCubit>(context).items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item, style: TextStyle(fontWeight: FontWeight.bold)),
            );
          }).toList(),
        ),
      ]),
    );
  }
}

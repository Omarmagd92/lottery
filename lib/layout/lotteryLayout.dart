import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery/layout/cubit/cubit.dart';
import 'package:lottery/layout/cubit/states.dart';

class LotteryLayout extends StatelessWidget {
  const LotteryLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LotteryCubit, LotteryStates>(
      listener: (context, state) => {},
      builder: (context, state) {
        var cubit = LotteryCubit.get(context);
        return SafeArea(
          child: DefaultTabController(
              length: 3,
              child: Scaffold(
                  appBar: AppBar(
                    toolbarHeight: 70,
                    leading: Image.asset("assets/images/3d_avatar_30.png"),
                    actions: [
                      IconButton(
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(Icons.notifications_none_rounded)),
                      IconButton(
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(Icons.menu))
                    ],
                  ),
                  body: cubit.screens[cubit.currentIndex],
                  bottomNavigationBar: BottomNavigationBar(
                    onTap: cubit.changeBottom,
                    unselectedItemColor: Colors.grey,
                    selectedItemColor: Colors.blueAccent,
                    currentIndex: cubit.currentIndex,
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.home,
                          ),
                          label: "home"),
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.production_quantity_limits_outlined,
                          ),
                          label: "production"),
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.chat,
                          ),
                          label: "chat"),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Page 3',
                      ),
                    ],
                  ))),
        );
      },
    );
  }
}

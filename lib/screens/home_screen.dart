import 'package:flutter/material.dart';

import '../components/home_screen_body/home_screen_body.dart';
import '../models/navigator_model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                Text(
                  'Ballack Jr',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.06),
                child: Stack(
                  fit: StackFit.loose,
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Icon(
                      Icons.notifications_outlined,
                      size: 25,
                    ),
                    Container(
                      width: 6,
                      height: 6,
                      margin: EdgeInsets.only(right: 6, top: 2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              )
            ],
            leadingWidth: size.width * .12,
            leading: Container(
              margin: EdgeInsets.fromLTRB(size.width * .05, 10, 0, 12),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/user_image.jpg'),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle),
            )),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int? index) {
            setState(() {
              selectedIndex = index!;
            });
          },
          items: navigators
              .map((e) => BottomNavigationBarItem(
                  icon: Icon(
                    e.icon,
                  ),
                  label: e.text))
              .toList(),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xff5D53E2),
          unselectedItemColor: Colors.black.withOpacity(0.6),
          iconSize: 25,
          // unselectedLabelStyle: TextStyle(color: Color(0xff000000,),fontSize: 15),
        ),
        body: HomeScreenBody());
  }
}

class NavigatorModel {
  String text;
  IconData icon;

  NavigatorModel({required this.text, required this.icon});
}

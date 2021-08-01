import 'package:finalprojet/Dragnui/DargonScreen.dart';
import 'package:finalprojet/Dragnui/DragonScreen2.dart';
import 'package:finalprojet/Dragnui/DragonScreen3.dart';
import 'package:flutter/material.dart';

class Four extends StatefulWidget {
  @override
  _FourState createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("SpaceX"),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.white],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft)),
            ),
            bottom: TabBar(
              indicatorColor: Colors.red,
              indicatorWeight: 4,
              tabs: [
                Tab(
                  text: ("Dragons"),
                ),
                Tab(
                  text: ("Lanuches"),
                ),
                Tab(
                  text: ("ships"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              DragonScreen(),
              DragonScreen2(),
              DragonScreen3(),
            ],
          ),
        ));
  }
}

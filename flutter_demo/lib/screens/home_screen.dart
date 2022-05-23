// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, unused_import

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_demo/constant/color_constant.dart';
import 'package:flutter_demo/models/card_model.dart';
import 'package:flutter_demo/screens/feeds_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  final int selectedPage = 2;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: widget.selectedPage,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Color(0xFFFAFAFA),
          title: Image.asset(
            'assets/images/logo_demo.png',
            fit: BoxFit.contain,
            width: MediaQuery.of(context).size.width / 2.5,
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                "Bulletin News",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 59,
              width: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage("assets/images/user_image.jpg"),
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xFFEEEEEE),
                  ),
                  height: 30,
                  width: MediaQuery.of(context).size.width / 1.1,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(1),
                  child: TabBar(
                      padding: EdgeInsets.all(0),
                      unselectedLabelColor: Color(0xFF757575),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Color(0xFF757575)),
                      tabs: [
                        Tab(
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Feeds",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Populer",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Following",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              )),
        ),
        body: TabBarView(children: [
          HomeScreen(),
          FeedsScreen(),
          FeedsScreen(),
          FeedsScreen()
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterapp/screen/home_screen.dart';
import 'package:flutterapp/screen/like_screen.dart';
import 'package:flutterapp/screen/more_screen.dart';
import 'package:flutterapp/screen/search_screen.dart';
import 'package:flutterapp/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ChoFlix',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white,
        ),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              // 터치 스크롤을 막고 하단 탭 선택으로 이동되도록 함
              children: <Widget>[
                HomeScreen(), // 홈
                SearchScreen(), // 검색
                LikeScreen(), // 찜
                MoreScreen(),
              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ));
  }
}

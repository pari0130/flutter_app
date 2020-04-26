import 'package:flutter/material.dart';
import 'package:flutterapp/model/model_movie.dart';
import 'package:flutterapp/widget/box_slider.dart';
import 'package:flutterapp/widget/carousel_slider.dart';
import 'package:flutterapp/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.formMap({
      'title': '사항의불시착1',
      'keyword': '사랑/로맨스/판타지1',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.formMap({
      'title': '사항의불시착2',
      'keyword': '사랑/로맨스/판타지2',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.formMap({
      'title': '사항의불시착3',
      'keyword': '사랑/로맨스/판타지3',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.formMap({
      'title': '사항의불시착4',
      'keyword': '사랑/로맨스/판타지4',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.formMap({
      'title': '사항의불시착5',
      'keyword': '사랑/로맨스/판타지5',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.formMap({
      'title': '사항의불시착6',
      'keyword': '사랑/로맨스/판타지6',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.formMap({
      'title': '사항의불시착7',
      'keyword': '사랑/로맨스/판타지7',
      'poster': 'test_movie_1.png',
      'like': false
    }),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            TopBar(),
            CarouselImage(movies: movies),
          ],
        ),
        CircleSlider(
          movies: movies,
        ),
        BoxSlider(
          movies: movies,
        )
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 50, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/Netflix_Symbol_RGB.png',
            fit: BoxFit.contain,
            height: 70,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'TV 프로그램',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '영화',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '내가 찜한 콘텐츠',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

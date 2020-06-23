import 'dart:io';

import 'package:dalkmobile/screens/home_screen.dart';
import 'package:dalkmobile/services/api_handler.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with TickerProviderStateMixin {
  ApiHandler apiHandler = ApiHandler();
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100000),
      vsync: this,
    );
    _controller.forward();
    super.initState();
    getMVPData();
  }

  void getMVPData() async{
    Duration duration = Duration(seconds: 1);
    Future.delayed(duration, () async {
      var mvpInfo = await apiHandler.getMVPInfo();
      print(mvpInfo);
      _controller.reset();
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomeScreen(mvpInfo: mvpInfo);
      }));
    });

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 53, 104, 1.0),
      body: Center(
          child: RotationTransition(
            turns: Tween(begin: 0.0, end: 100.0).animate(_controller),
            child: Image(
              image: AssetImage('images/logo_dalk.png'),
              width: 100,
              height: 100,
        ),
          ),
      ),
    );
  }
}

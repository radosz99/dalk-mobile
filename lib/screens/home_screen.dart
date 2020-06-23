import 'package:dalkmobile/components/mvp_area.dart';
import 'package:dalkmobile/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeScreen extends StatefulWidget {

  HomeScreen({this.mvpInfo});

  final mvpInfo;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String playerImgURL;
  String playerName;
  String playerSurname;
  String playerTeam;
  String playerLine;

  @override
  void initState() {
    super.initState();
    playerImgURL = widget.mvpInfo['result']['playerImageURL'];
    playerName = widget.mvpInfo['result']['name'];
    playerSurname = widget.mvpInfo['result']['surname'];
    playerTeam = widget.mvpInfo['result']['team'];
    playerLine = widget.mvpInfo['result']['statisticLine'];
    updateUI(widget.mvpInfo);
  }

  void updateUI(dynamic mvpInfo){
    print(mvpInfo);
    setState(() {
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Color.fromRGBO(224, 227, 245, 1.0),
        home: SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Center(
                child: AppBar(
                  backgroundColor: Color.fromRGBO(12, 53, 104, 1.0),
                  automaticallyImplyLeading: false,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/logo_dalk.png',
                        fit: BoxFit.contain,
                        height: 32,
                      ),
                      Container(
                          padding: const EdgeInsets.all(8.0), child: Text('DALK'))
                    ],
                  ),
                ),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        color: Colors.white,
                        cardChild: MVPArea(imgPath: playerImgURL, name: playerName, surname: playerSurname, team: playerTeam, statisticLine: playerLine),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}

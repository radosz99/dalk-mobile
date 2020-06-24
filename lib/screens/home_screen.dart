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
              preferredSize: Size.fromHeight(60.0),
              child: AppBar(
                  backgroundColor: Color.fromRGBO(12, 53, 104, 1.0),
                  automaticallyImplyLeading: false,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/logo_dalk.png',
                        fit: BoxFit.contain,
                        height: 36,
                      ),
                    ],
                  ),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Row(
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
                ),
                SizedBox(
                  height: 40.0,
                ),
                Expanded(
                  flex: 12,
                  //'images/logo_dalk.png'
                  child: ReusableCard(
                    color: Colors.white,
                    cardChild: Container(
                      child: Center(
                          child: Text(
                            'Sto Twarzy Grzybiarzy rozpierdoliło DALK',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          )
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
                          image: new NetworkImage('https://dalk.pl/images/aktualnosci-foto/baner-dalk.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Expanded(
                  flex: 2,
                  child: PreferredSize(
                    preferredSize: Size.fromHeight(25.0),
                    child: BottomNavigationBar(
                      backgroundColor: Color.fromRGBO(12, 53, 104, 1.0),
                      items:  <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: Icon(Icons.explore), title: Text('Explore')),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.explore), title: Text('Explore')),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}

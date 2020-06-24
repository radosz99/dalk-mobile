import 'package:DALK/presentation/bottom_app_bar_icons.dart';
import 'package:flutter/material.dart';
import 'package:DALK/components/bottom_app_bar_element.dart';
class CustomAppBar extends StatelessWidget {

  CustomAppBar({this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Container(
        color: Color.fromRGBO(12, 53, 104, 1.0),
        height: 75,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomAppBarElement(text: 'Home', icon: BottomAppBarIcons.home, color: index != 0 ? Colors.white : Colors.blue),
            BottomAppBarElement(text: 'Statystyki', icon: BottomAppBarIcons.graph, color: index != 1 ? Colors.white : Colors.blue),
            BottomAppBarElement(text: 'Mecze', icon: BottomAppBarIcons.pitch, color: index != 2 ? Colors.white : Colors.blue),
            BottomAppBarElement(text: 'Tabele', icon: BottomAppBarIcons.cup, color: index != 3 ? Colors.white : Colors.blue),
          ],
        ),
      ),
    );
  }

}

//Container(
//child: Container(
//color: Colors.red,
//child: Row(children: [
//IconButton(
//icon: Icon(Icons.menu),
//onPressed: () {
//Scaffold.of(context).openDrawer();
//},
//),
//IconButton(
//icon: Icon(Icons.verified_user),
//),
//]),
//),
//),
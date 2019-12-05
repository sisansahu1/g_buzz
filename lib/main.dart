import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:g_buzz/attendence_icons.dart';
import 'package:g_buzz/customIcon.dart';
import 'package:g_buzz/grade_icons.dart';
import 'package:g_buzz/profileface_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void notify() {}
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var per = 0.8;
    return Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        bottomNavigationBar: CurvedNavigationBar(
          index: 1,
          backgroundColor: Colors.deepPurple[30],
          items: <Widget>[
            Icon(
              Grade.grade,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Profileface.user,
              size: 26,
              color: Colors.black,
            ),
            Icon(Attendence.attendence, size: 26, color: Colors.black)
          ],
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) {
            //Handle button tap
          },
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      CustomIcons.menu,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
              children: <Widget>[
                new CircularPercentIndicator(
                    radius: 200.0,
                    lineWidth: 10.0,
                    animation: true,
                    progressColor: Colors.deepPurpleAccent[100],
                    backgroundColor:Colors.deepPurple[100],
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: per,
                    center: new Text(
                      '80.0%',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )),
              ],
            )
              ],
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:i_am/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'globals.dart' as globals;

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {

  @override
  void initState() {
    super.initState();
    startTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 4);

    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setStringList("log", <String>['false']);
    prefs.setStringList("user", <String>['shiri']);
    prefs.setStringList("password", <String>['123']);
    prefs.setStringList("brief", <String>['Hi! This is my personal portfolio']);
    prefs.setStringList("skill", <String>['Artist and Engineer']);

    var status = prefs.getStringList("log") ?? 'NULL';
    var users = prefs.getStringList("user") ?? 'NULL';
    var passwords = prefs.getStringList("password") ?? 'NULL1';
    var briefs = prefs.getStringList('brief') ?? 'NULL2';
    var skills = prefs.getStringList('skill') ?? 'NULL3';

    print(status);
    print(users);
    print(passwords);
    print(briefs);
    print(skills);

    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Login()
      )
    );
  }

  initScreen(BuildContext context) {
    return Scaffold (

        backgroundColor: Colors.yellow.shade50,
        appBar: AppBar(
          title: Center(child: Text('I am')),
          backgroundColor: Colors.deepOrange.shade50,
          ),
        body: SafeArea(
           child: Center(
              child: Column(
                children: [

                  Container(
                    color: Colors.yellow.shade50,
                    width: double.infinity,
                    child: Image(
                        image: AssetImage('assets/icons/landing_top.jpeg'),
                        fit: BoxFit.fitWidth
                    ),
                  ),

                  Container(
                    child: Text (
                      'Elisheva Shiri Decktor',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 35,
                      ),
                    ),
                  ),
                  Container(
                    child: Text (
                      'present: ',
                      style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 50,
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.yellow.shade50,
                    height:400,
                    width:300,
                    child: Image(
                        image: AssetImage('assets/icons/chilli_laal.png'),
                        fit: BoxFit.fitWidth
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
      }
}

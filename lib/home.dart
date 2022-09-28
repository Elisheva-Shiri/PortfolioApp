import 'dart:core';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_am/error404.dart';
import 'package:i_am/errorUpload.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'profile.dart';
import 'about.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.user, required this.skill, required this.brief}) : super(key: key);
  final String user;
  final String brief;
  final String skill;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = ' ';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
        appBar: AppBar(
          title: Center(
            child: Text(
              'I am - Home',
              style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.deepOrange.shade50,
        ),

        body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 30, bottom: 15),
                  color: Colors.deepOrange.shade50,
                  width: double.infinity,
                  child: Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange.shade100,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/icons/profile.png'),
                              fit: BoxFit.fitHeight
                          )
                      )),
                ),

                  Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )
                    ),
                    height: 70,
                    child: Text(
                      'Hello ' + widget.user ,
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                        ),
                  ),

                SizedBox(
                  height: 100,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>Profile(user: widget.user, brief : widget.brief, skill : widget.skill),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(right:  15),
                    alignment: Alignment.centerRight,
                    height: 50,
                    child: Text(
                      'Profile',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>const ErrorUpload(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(right:  15),
                    alignment: Alignment.centerRight,
                    height: 50,
                    child: Text(
                      'Upload new project',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>const Error404(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(right:  15),
                    alignment: Alignment.centerRight,
                    height: 50,
                    child: Text(
                      'About',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),



              ],
                    )
                  ),
                );

  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}


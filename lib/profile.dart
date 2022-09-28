import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'projects.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key, required this.user, required this.skill, required this.brief}) : super(key: key);
  final String user;
  final String brief;
  final String skill;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<String> projectName = ['Animals',
      'Black and White',
      'Ceramics',
      'Humans',
      'LandSkape',
      'Monks',
      'Nature',
      'Places'];
    List<String> projectIcon = ['assets/icons/animals.png',
      'assets/icons/BnW.png',
      'assets/icons/ceramics.png',
      'assets/icons/humans.png',
      'assets/icons/landSkape.png',
      'assets/icons/monks.png',
      'assets/icons/nature.png',
      'assets/icons/places.png'];
    List<String> projectBrief = ['This project is about: Animals',
      'This project is about: Black and White images',
      'This project is about: Ceramics',
      'This project is about: Humans',
      'This project is about: Landscape',
      'This project is about: Monks',
      'This project is about: Nature',
      'This project is about: Places'];
    List<List<String>> projectPhotos = [['assets/images/animals1.png','assets/images/animals2.png','assets/images/animals3.png'],
    ['assets/images/BnW1.png', 'assets/images/BnW2.png', 'assets/images/BnW3.png'],
    ['assets/images/ceramics1.png', 'assets/images/ceramics2.png', 'assets/images/ceramics3.png'],
    ['assets/images/humans1.png', 'assets/images/humans2.png', 'assets/images/humans3.png'],
    ['assets/images/landSkape1.png', 'assets/images/landSkape2.png', 'assets/images/landSkape3.png'],
    ['assets/images/monks1.png', 'assets/images/monks2.png', 'assets/images/monks3.png'],
    ['assets/images/nature1.png', 'assets/images/nature2.png', 'assets/images/nature3.png'],
    ['assets/images/places1.png', 'assets/images/places2.png', 'assets/images/places3.png']];


    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'I am - Profile',
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only( top: 130, bottom: 15),
              width: double.infinity,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.deepOrange.shade50,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/icons/profile.png'),
                  fit: BoxFit.fitHeight
                  )
                )
              ),

            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  )
              ),
              height: 50,
              child: Text("This is " + widget.user,
                  textScaleFactor: 1.5),
            ),

            SizedBox(
              height: 30,
            ),

            Container(
                alignment: Alignment.center,
                child: Text(
                  'About',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
            ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  widget.brief,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
            ),
            SizedBox(
              height: 30,
            ),

            Container(
                alignment: Alignment.topCenter,
                child: Text(
                  'Your Projects',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
            ),

            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Container(
                    height: size.height * 0.2,
                    child: Row(
                      children: [

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Projects(icon: projectIcon[0], name: projectName[0], brief: projectBrief[0], images: projectPhotos[0]),
                              ),
                            );
                          },

                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(projectIcon[0]),
                              Container (
                                child: Text(projectName[0],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                  ),
                                ),
                              )
                            ]
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Projects(icon: projectIcon[1], name: projectName[1], brief: projectBrief[1], images: projectPhotos[1]),
                              ),
                            );
                          },

                          child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(projectIcon[1]),
                                Container (
                                  child: Text(projectName[1],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                )
                              ]
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),


                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Projects(icon: projectIcon[2], name: projectName[2], brief: projectBrief[2], images: projectPhotos[2]),
                              ),
                            );
                          },

                          child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(projectIcon[2]),
                                Container (
                                  child: Text(projectName[2],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                )
                              ]
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),


                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Projects(icon: projectIcon[3], name: projectName[3], brief: projectBrief[3], images: projectPhotos[3]),
                              ),
                            );
                          },

                          child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(projectIcon[3]),
                                Container (
                                  child: Text(projectName[3],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                )
                              ]
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Projects(icon: projectIcon[4], name: projectName[4], brief: projectBrief[4], images: projectPhotos[4]),
                              ),
                            );
                          },

                          child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(projectIcon[4]),
                                Container (
                                  child: Text(projectName[4],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                )
                              ]
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),


                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Projects(icon: projectIcon[5], name: projectName[5], brief: projectBrief[5], images: projectPhotos[5]),
                              ),
                            );
                          },

                          child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(projectIcon[5]),
                                Container (
                                  child: Text(projectName[5],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                )
                              ]
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),


                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Projects(icon: projectIcon[6], name: projectName[6], brief: projectBrief[6], images: projectPhotos[6]),
                              ),
                            );
                          },

                          child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(projectIcon[6]),
                                Container (
                                  child: Text(projectName[6],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                )
                              ]
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Projects(icon: projectIcon[7], name: projectName[7], brief: projectBrief[7], images: projectPhotos[7]),
                              ),
                            );
                          },

                          child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(projectIcon[7]),
                                Container (
                                  child: Text(projectName[7],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                )
                              ]
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),


                      ],
                    ),
                  )
              ),
            )
          ],
        ),
      ),
      


    );
  }
}


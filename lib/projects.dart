import 'package:flutter/material.dart';

import 'discription.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key, required this.name, required this.icon, required this.brief, required this.images}) : super(key: key);
  final String name;
  final String icon;
  final String brief;
  final List<String> images;

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.yellow.shade100,
        appBar: AppBar(
          title: Center(
            child: Text(
              'I am - Projects',
              style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.deepOrange.shade50,
        ),

        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only( top: 30, bottom: 5),
                  alignment: Alignment.center,
                  child: Text(
                    widget.name,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),

                Container(
                  width: size.width * 0.5,
                  height: size.height * 0.5,

                  child: Stack(
                      alignment: Alignment.center,

                      children: [
                        Image.asset(widget.icon),
                        Container (
                          child: Text(widget.name,
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

                Container(
                  alignment: Alignment.center,
                  child: Text(
                    widget.brief,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Attach Files',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),

                Container(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: size.height * 0.2,
                        child: Row(
                          children: [

                            SizedBox(
                              width: 2,
                            ),

                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=>Discription(image: widget.images[0]),
                                  ),
                                );
                              },

                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [Image.asset(widget.images[0])]),
                            ),

                            SizedBox(
                              width: 2,
                            ),

                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=>Discription(image: widget.images[1]),
                                  ),
                                );
                              },

                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [Image.asset(widget.images[1])]),
                            ),

                            SizedBox(
                              width: 2,
                            ),


                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=>Discription(image: widget.images[2]),
                                  ),
                                );
                              },

                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [Image.asset(widget.images[2])]),
                            ),

                            SizedBox(
                              width: 2,
                            ),
                          ],
                        ),
                      )
                  ),
                )




              ],
            )
        )


    );
  }
}

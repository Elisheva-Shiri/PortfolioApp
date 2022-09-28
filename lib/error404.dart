import 'package:flutter/material.dart';
import 'login.dart';

class Error404 extends StatefulWidget {
  const Error404({Key? key}) : super(key: key);

  @override
  State<Error404> createState() => _Error404State();
}

class _Error404State extends State<Error404> {

  @override
  void initState(){
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade800,

      appBar: AppBar(
        title: Center(child: Text('I am')),
        backgroundColor: Colors.deepOrange.shade50,
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              Container(
                padding: EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                child: Text(
                  'OHH! nothing was found',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),

              Container(

                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Sorry',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                height:400,
                child: Image(
                    image: AssetImage('assets/icons/frog_404.png'),
                    fit: BoxFit.fitWidth
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>const Login(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  width: 150,
                  height: 50,
                  child: Text(
                    'Back',
                    style: TextStyle(
                        fontSize: 20,
                    color: Colors.black),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Text(
                  'The page your looking for',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'is still in procees',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

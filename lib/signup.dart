import 'package:flutter/material.dart';
import 'package:i_am/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String text = ' ';
  TextEditingController userNameField = TextEditingController();
  TextEditingController passwordField = TextEditingController();
  TextEditingController briefField = TextEditingController();
  TextEditingController skillField = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,

      appBar: AppBar(
        title: Center(
          child: Text(
            'I am - Sign',
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
              padding: EdgeInsets.only(top: 70),
              alignment: Alignment.center,
              child: Text(
                'Welcome ! ',
                style: TextStyle(fontSize: 70, color: Colors.black),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Container(
                alignment: Alignment.center,
                child: Text(
                  'User Name *',
                  style: TextStyle(fontSize: 15, color: Colors.black),
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
              child: TextField(
                controller: userNameField,
                textInputAction: TextInputAction.next,
              ),
            ),

            Container(
                alignment: Alignment.center,
                child: Text(
                  'Password *',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  )),
              height: 50,
              child: TextField(
                controller: passwordField,
              ),
            ),


            Container(
                alignment: Alignment.center,
                child: Text(
                  'Tell us about your self',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  )),
              height: 50,
              child: TextField(
                controller: briefField,
              ),
            ),

            Container(
                alignment: Alignment.center,
                child: Text(
                  'What is your favorit color',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  )),
              height: 50,
              child: TextField(
                controller: skillField,
              ),
            ),


            SizedBox(
              height: 30,
            ),

            GestureDetector(
              onTap: () async {
                if (userNameField.text.length < 2 || passwordField.text.length < 8) {
                  const snackBar = SnackBar(content: Text(
                      'UserName or Password are not valid'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                else{
                    text = 'You may Submit';
                    SharedPreferences prefs = await SharedPreferences.getInstance();

                    final List<String>? status = prefs.getStringList('log');
                    final List<String>? users = prefs.getStringList("user");
                    final List<String>? passwords = prefs.getStringList("password");
                    final List<String>? briefs = prefs.getStringList('brief');
                    final List<String>? skills = prefs.getStringList('skill');

                    String newUser = userNameField.text;
                    String newPassword = passwordField.text;
                    String newBrief = briefField.text;
                    String newSkill = skillField.text;

                    status?.add('false');
                    users?.add(newUser);
                    passwords?.add(newPassword);
                    briefs?.add(newBrief);
                    skills?.add(newSkill);

                    prefs.setStringList("log", status!);
                    prefs.setStringList("user", users!);
                    prefs.setStringList("password", passwords!);
                    prefs.setStringList("brief", briefs!);
                    prefs.setStringList("skill", skills!);

                    print(status);
                    print(users);
                    print(passwords);
                    print(briefs);
                    print(skills);

                    setState(() {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login(),
                        ),
                      );
                    },
                  );
                }
              },

              child: Container(
                alignment: Alignment.center,
                height: 50,
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 40 ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              child: Text(
                '* User name must be longer then 2 caracters ',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '* Password must be longer then 8 caracters',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ),

            SizedBox(
              height: 30,
            ),

          ],
        ),
      ),
    );
  }
}






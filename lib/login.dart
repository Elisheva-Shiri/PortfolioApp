import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'signup.dart';
import 'error404.dart';
import 'home.dart';

const users = < String, String> {
  '': '',
};

class Login extends StatefulWidget {
  Duration get loginTime => Duration(milliseconds: 2250);
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String text = ' ';
  TextEditingController userNameField = TextEditingController();
  TextEditingController passwordField = TextEditingController();

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
            'I am - Log',
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
                  'Login',
                  style: TextStyle(fontSize: 70, color: Colors.black),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Container(
                alignment: Alignment.center,
                child: Text(
                  'User Name',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),

              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                height: 50,
                child: TextField(
                  controller: userNameField,
                  textInputAction: TextInputAction.next,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Password',
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

              SizedBox(
                height: 30,
              ),

              GestureDetector(
                onTap: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();

                  final List<String>? status = prefs.getStringList('log');
                  final List<String>? users = prefs.getStringList("user");
                  final List<String>? passwords = prefs.getStringList("password");
                  final List<String>? briefs = prefs.getStringList("brief");
                  final List<String>? skills = prefs.getStringList("skill");

                  if (userNameField.text.isNotEmpty) {
                    String thisUser = userNameField.text;
                    if (users!.contains(thisUser)) {
                      if (passwordField.text.isNotEmpty){
                        String thisPassword = passwordField.text;
                        if (passwords!.contains((thisPassword))){
                          final int indexUser = users.indexOf(thisUser);
                          final int indexPassword = passwords.indexOf(thisPassword);
                          if (indexPassword == indexUser){
                            status![indexUser] = 'true';
                            String thisBrief = briefs![indexUser];
                            String thisSkill = skills![indexUser];

                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home(user: thisUser, brief : thisBrief, skill : thisSkill),
                                ),
                              );
                             }
                            );
                          }
                          else{
                            const snackBar = SnackBar(content: Text(
                                'User not exists or password does not match'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        }
                        else{
                          const snackBar = SnackBar(content: Text(
                              'User not exists or password does not match'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      }
                    }
                    else{
                      const snackBar = SnackBar(content: Text(
                          'User not exists or password does not match'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  }
                  else{
                    const snackBar = SnackBar(content: Text(
                        'User not exists or password does not match'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },

                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(text),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Let's start",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ],
                ),
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
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    'Forgot user name or password',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>const Signup(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),

            ],
        ),
      ),
    );
  }
}


// Print('Signup Name: ${data.name}, Password: ${data.password}');
import 'package:events/screens/signUpPage.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _useremail = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _obScure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blue[900],
          appBar: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(
                  MediaQuery.of(context).size.height,
                  100,
                ),
              ),
            ),
            backgroundColor: Colors.blue[700],
            title: Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 40,),
            ),
            centerTitle: true,
            elevation: 15,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0.0, top: 25.0, right: 0.0, bottom: 0.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/logo.png"),
                        backgroundColor: Colors.transparent,
                        radius: 60,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextField(
                      controller: _useremail,
                      autofocus: false,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Useremail",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              letterSpacing: 1),
                        ),
                        hintText: "Useremail",
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17.0,
                    ),
                    TextField(
                      controller: _password,
                      style: TextStyle(color: Colors.white),
                      autofocus: false,
                      obscureText: _obScure,
                      decoration: InputDecoration(
                        focusColor: Colors.green,
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2.0),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obScure
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              if (!_obScure) {
                                _obScure = true;
                              } else {
                                _obScure = false;
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              //border: Border.all(width: 2,color: Colors.white),
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "LOGIN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Row(
                          children: [
                            Text(
                              "Don't have Events account?",
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                              },
                              child:Text(
                                  "Register here",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              
                            ),
                          ],
                        ),
                      
                    ),
                  ],
                ),
              )),
            ),
          ))
    ;
  }
}

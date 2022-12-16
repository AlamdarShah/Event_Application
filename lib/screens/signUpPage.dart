import 'package:flutter/material.dart';

import 'homePage.dart';
import 'loginPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _useremail = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _gender = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _address = TextEditingController();
  bool _obScure=true;
  bool male=false,female=false;
  bool _checkboxMale=false;
  bool _checkboxFemale=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            "Sign Up",
            style: TextStyle(color: Colors.white, fontSize: 40),
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
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    controller: _username,
                    autofocus: false,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      hintText: "Username",
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
                    controller: _useremail,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.white),
                      label: Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      hintText: "Email",
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
                    autofocus: false,
                    obscureText: _obScure,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.lock_outline, color: Colors.white),
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
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                        ),
                        suffixIcon: IconButton(
                            
                            icon:Icon( _obScure?Icons.visibility_off_outlined:Icons.visibility_outlined,color: Colors.white,),onPressed: () {
                            setState(() {
                              if (!_obScure) {
                                _obScure = true;
                              }
                              else{
                                _obScure=false;
                              }
                            });
                          },),
                  ),),
                  SizedBox(
                    height: 17.0,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text("GENDER :",style: TextStyle(color: Colors.white,fontSize: 20),),
                      SizedBox(width: 10,),
                      Text("Male",style: TextStyle(color: Colors.white,fontSize: 20)),
                      Checkbox(
                        side: BorderSide(color: Colors.white,),
                        value: _checkboxMale,
                        onChanged: (value) {
                          setState(() {
                            _checkboxMale = value!;
                          });
                        },
                      ),
                       Text("Female",style: TextStyle(color: Colors.white,fontSize: 20)),
                      Checkbox(
                        side: BorderSide(color: Colors.white,),
                        
                        value: _checkboxFemale,
                        onChanged: (value) {
                          setState(() {
                            _checkboxFemale = value!;
                          });
                        },
                      ),
                      
                    ],
                  ),
                  ),
                  // Row(
                  //     children: [
                        
                  //      CheckboxListTile(value: male, onChanged: ( value) {
                  //        setState(() {
                  //          male=value!;
                  //        });
                  //      },
                  //      title: Text("Male"),
                  //      ),
                  //     //  CheckboxListTile(value: female, onChanged: (value) {
                  //     //    setState(() {
                  //     //      female=value;
                  //     //    });
                  //     //  },
                  //     //  title: Text("Female"),
                  //     //  )
                  //     ],
                  //   ),
                  SizedBox(
                    height: 17.0,
                  ),
                  TextField(
                    controller: _number,
                    keyboardType: TextInputType.phone,
                    autofocus: false,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.phone_outlined, color: Colors.white),
                      label: Text(
                        "Mobile No",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      hintText: "Mobile No",
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
                    controller: _address,
                    keyboardType: TextInputType.streetAddress,
                    autofocus: false,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email_outlined, color: Colors.white),
                      label: Text(
                        "Address",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      hintText: "Address",
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
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text(
                          "Sign Up",
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
                    child: Row(
                      children: [
                        Text(
                          "Have you Events account ?",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Text(
                              "Login Here",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:demo_project/QR%20code/BottomNaigation.dart';
import 'package:demo_project/singup_screen.dart';
import 'package:flutter/material.dart';

import 'Constant/Constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailname = TextEditingController();
  TextEditingController passwordname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            height: height * 0.4,
            child: Image.asset(
              'assets/Rectangle4.png',
              fit: BoxFit.cover,
              color: Colors.black12,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.20,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'LogIn',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Times New Roman',
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Form(
                      key: formkey,
                      child: Padding(
                        padding: EdgeInsets.all(height * 0.025),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                validator: (String? value) {
                                  //  if (value != sourcenames.value.text)
                                  if (value!.isEmpty) {
                                    return 'Required';
                                  } else {
                                    return null;
                                  }
                                },
                                controller: emailname,
                                cursorColor: CustomColors.primary,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: new BorderSide(
                                      color: CustomColors.primary,
                                    )),
                                    border: OutlineInputBorder(),
                                    filled: true,
                                    fillColor: Color(0xFFFFFFFF),
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                      color: CustomColors.primary,
                                    )),
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              validator: (String? value) {
                                //  if (value != sourcenames.value.text)
                                if (value!.isEmpty) {
                                  return 'Required';
                                } else {
                                  return null;
                                }
                              },
                              controller: passwordname,
                              cursorColor: CustomColors.primary,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: new BorderSide(
                                    color: CustomColors.primary,
                                  )),
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xFFFFFFFF),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    color: CustomColors.primary,
                                  )),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Container(
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: RaisedButton(
                                  onPressed: () {
                                    if (formkey.currentState!.validate()) {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BottomNavugation()),
                                      );
                                    }
                                  },
                                  color: CustomColors.primary,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: Text(
                                      'SignIn',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Don`t have an Account?',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => SingUp()),
                                      );
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        color: CustomColors.primary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

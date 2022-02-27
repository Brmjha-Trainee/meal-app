// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meal_app/utils/main_drawer.dart';
import 'package:meal_app/utils/constant.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isExist = true;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 600,
        width: 300,
        color: Colors.yellow,
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: Visibility(
          child: Column(
            children: [
              Image.asset(
                'images/chef-hat.png',
                fit: BoxFit.fitWidth,
                height: 100,
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Email Address",
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              //do something
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink),
                            ),
                            child: Text('LOGIN',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal))),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            child: Text('SIGN UP INSTEAD',
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold)),
                            onTap: () => {
                                  isExist = false,
                                  setState(() {}),
                                }),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          visible: isExist,
          replacement: Column(
            children: [
              Image.asset(
                'images/chef-hat.png',
                fit: BoxFit.fitWidth,
                height: 100,
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Email Address",
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Confirm Password",
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              //do something
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink),
                            ),
                            child: Text('SIGN UP',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal))),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            child: Text('LOGIN INSTEAD',
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold)),
                            onTap: () => {
                                  isExist = true,
                                  setState(() {}),
                                }),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:sahaj_hackathon/modals/animation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart'as http;


class LoginPage extends StatelessWidget {

  static const String id='LoginScreen';
//email is userId
  var email="";
  var password="";

  final box=GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.lightGreen,
                  Colors.lightGreen,
                  Colors.lightGreen
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Colors.lightGreen,
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "userId",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                  onChanged: (value){
                                    email=value;
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                  onChanged: (value){
                                    password=value;
                                  },
                                ),
                              ),
                            ],
                          ),
                        )),

                        SizedBox(height: 40,),
                        FadeAnimation(1.6, Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.lightGreen[600]
                          ),
                          child: Center(
                            child: FlatButton(
                                onPressed: () async{

                                },
                                child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)

                            ),

                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
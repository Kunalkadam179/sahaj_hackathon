import 'dart:convert';
import 'dart:io';

import 'package:sahaj_hackathon/dashboards/collegeDashboard.dart';
import 'package:sahaj_hackathon/modals/animation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart'as http;
import 'package:sahaj_hackathon/profiles/collegeProfile.dart';
import 'package:sahaj_hackathon/profiles/companyProfile.dart';
import 'package:sahaj_hackathon/profiles/student_profile.dart';


class LoginPage extends StatelessWidget {

  static const String id='LoginScreen';
//email is userId
  var email="";
  var password="";

  final box=GetStorage();

  int _login(){
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
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
            const SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, const Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  const SizedBox(height: 10,),
                  FadeAnimation(1.3, const Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: const Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 60,),
                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [const BoxShadow(
                                  color: Colors.lightGreen,
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: const Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: TextField(
                                  decoration: const InputDecoration(
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
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    border: Border(bottom: const BorderSide(color: Colors.grey))
                                ),
                                child: TextField(
                                  decoration: const InputDecoration(
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

                        const SizedBox(height: 40,),
                        FadeAnimation(1.6, Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.lightGreen[600]
                          ),
                          child: Center(
                            child: FlatButton(
                                onPressed: () async{
                                  if(_login() == 1) {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CompanyProfile()));
                                  }
                                  else if(_login() == 2)
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const CollegeProfile()));
                                  }
                                  else
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const StudentProfileWidget()));
                                  }
                                },
                                child: const Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)

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
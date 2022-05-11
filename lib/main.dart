import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sahaj_hackathon/dashboards/collegeDashboard.dart';
import 'package:sahaj_hackathon/login.dart';
import 'package:sahaj_hackathon/profiles/collegeProfile.dart';
import 'package:sahaj_hackathon/profiles/student_profile.dart';

void main() async{

  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CollegeProfile.id,
      routes: {
        CollegeProfile.id:(context)=>const CollegeProfile(),
        StudentProfileWidget.id:(context)=>const StudentProfileWidget(),
        CollegeDashboard.id:(context)=>CollegeDashboard(),
        LoginPage.id:(context)=>LoginPage()
      },
    );
  }
}

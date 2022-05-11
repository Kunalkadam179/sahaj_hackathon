import 'package:flutter/material.dart';
import 'package:sahaj_hackathon/dashboards/collegeDashboard.dart';
import 'package:sahaj_hackathon/profiles/collegeProfile.dart';
import 'package:sahaj_hackathon/profiles/student_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CollegeDashboard.id,
      routes: {
        CollegeProfile.id:(context)=>const CollegeProfile(),
        StudentProfileWidget.id:(context)=>const StudentProfileWidget(),
        CollegeDashboard.id:(context)=>CollegeDashboard()
      },
    );
  }
}

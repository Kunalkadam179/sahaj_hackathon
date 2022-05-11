import 'package:sahaj_hackathon/modals/project.dart';
import 'package:sahaj_hackathon/modals/student.dart';

import 'company.dart';

class College{
  String name;
  String location;
  List<String>students;
  List<String>projects;
  List<String>companies;
  String ambassador;
  String contact;
  College({required this.name, required this.location, required this.students, required this.projects, required this.companies,required this.ambassador,required this.contact});
}
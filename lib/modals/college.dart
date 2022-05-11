import 'package:sahaj_hackathon/modals/project.dart';
import 'package:sahaj_hackathon/modals/student.dart';

import 'company.dart';

class College{
  String name;
  String location;
  List<Student>students;
  List<Project>projects;
  List<Company>companies;

  College(
      this.name, this.location, this.students, this.projects, this.companies);
}
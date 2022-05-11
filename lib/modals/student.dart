import 'package:sahaj_hackathon/modals/project.dart';

class Student{
  String name;
  String id;
  Map<String,int>skills;
  String socialId;
  List<Project>projects;
  bool status;

  Student({required this.name, required this.id, required this.skills, required this.socialId, required this.projects,
      required this.status});
}
import 'package:sahaj_hackathon/modals/student.dart';

class Project{
  String statement;
  List<String> techStack;
  List<Student> team;
  String clgId;
  String company;
  String github;
  String host;
  int rating;
  int status;

  Project({
      required this.statement,
      required this.techStack,
      required this.team,
      required this.clgId,
      required this.company,
      required this.github,
      required this.host,
      required this.rating,
      required this.status}); //1->available 2->ongoing 3->completed

}
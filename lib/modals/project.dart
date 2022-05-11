import 'package:sahaj_hackathon/modals/student.dart';

class Project{
  final String statement;
  final List<String> techStack;
  final List<String> team;
  final String clgId;
  final String company;
  final String github;
  final String youtube;
  final int status;

  Project({
      required this.statement,
      required this.techStack,
      required this.team,
      required this.clgId,
      required this.company,
      required this.github,
      required this.status,
      required this.youtube
  }); //1->available 2->ongoing 3->completed

}
import 'package:sahaj_hackathon/modals/college.dart';
import 'package:sahaj_hackathon/modals/project.dart';

class Company{
  String name;
  String id;
  String description;
  Map<College,Project> work;

  Company({required this.name, required this.id, required this.description, required this.work});
}
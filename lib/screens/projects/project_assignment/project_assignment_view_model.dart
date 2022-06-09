// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:async_redux/async_redux.dart';

import 'package:ffuf_bootcamp_exam/models/employee/employee.dart';

class ProjectAssignmentViewModel extends Vm {
  final List<Employee> employees;

  ProjectAssignmentViewModel({
    required this.employees,
  }) : super(equals: [employees]);
}

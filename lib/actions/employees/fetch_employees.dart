import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/firebase_services/employee_services.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class FetchEmployees extends ReduxAction<AppState> {
  @override
  Future<AppState?> reduce() async {
    try {
      final employeeService = EmployeeServices();
      await employeeService.fetchEmployees();
      final employees = employeeService.employees;
      return state.copyWith(employees: employees);
    } on Exception catch (e) {
      print(e);
    }
    return state;
  }
}

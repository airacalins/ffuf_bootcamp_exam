import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ffuf_bootcamp_exam/models/employee/employee.dart';

class EmployeeServices {
  List<Employee> _employees = List<Employee>.empty(growable: true);

  List<Employee> get employees => _employees;

  Future<void> fetchEmployees() async {
    Stream<List<Employee>> employeeStream = FirebaseFirestore.instance.collection('employees').snapshots().map((snapshot) => snapshot.docs.map((doc) => Employee.fromJson(doc.data())).toList());
    _employees = await employeeStream.first;
  }
}

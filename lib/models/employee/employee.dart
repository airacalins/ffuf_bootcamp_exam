import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class Employee with _$Employee {
  factory Employee({
    required String id,
    required String firstName,
    required String lastName,
    required String imageUrl,
    required String email,
    required String position,
    required String address,
    required String telephone,
    required String fax,
    required String mobile,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
}

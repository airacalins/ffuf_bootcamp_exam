import 'package:ffuf_bootcamp_exam/models/employee/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    required List<Employee> employees,
  }) = _AppState;

  factory AppState.initialState({required}) => AppState(employees: []);

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}

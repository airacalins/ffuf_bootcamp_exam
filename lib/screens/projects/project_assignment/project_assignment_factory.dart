import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/screens/projects/project_assignment/project_assignment_screen.dart';
import 'package:ffuf_bootcamp_exam/screens/projects/project_assignment/project_assignment_view_model.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class ProjectAssignmentFactory extends VmFactory<AppState, ProjectAssignmentScreen> {
  ProjectAssignmentFactory(super.widget);

  @override
  Vm? fromStore() {
    return ProjectAssignmentViewModel(employees: state.employees);
  }
}

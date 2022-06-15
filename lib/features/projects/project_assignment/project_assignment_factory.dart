import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/features/projects/project_assignment/project_assignment_page.dart';
import 'package:ffuf_bootcamp_exam/features/projects/project_assignment/project_assignment_view_model.dart';
import 'package:ffuf_bootcamp_exam/exports/export_models.dart';
import 'package:ffuf_bootcamp_exam/models/union_page_state.dart';

import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class ProjectAssignmentFactory extends VmFactory<AppState, ProjectAssignmentScreen> {
  ProjectAssignmentFactory(super.widget);

  @override
  Vm? fromStore() => ProjectAssignmentViewModel(unionScreenState: _getLoadingState());

  UnionPageState<List<User>> _getLoadingState() {
    if (state.users.isEmpty) {
      return const UnionPageState.loading();
    } else {
      return UnionPageState(state.users);
    }
  }
}

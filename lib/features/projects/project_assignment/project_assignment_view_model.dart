// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/models/export_models.dart';

import 'package:ffuf_bootcamp_exam/models/union_page_state.dart';

class ProjectAssignmentViewModel extends Vm {
  final UnionPageState<List<User>> unionScreenState;

  ProjectAssignmentViewModel({required this.unionScreenState})
      : super(equals: [unionScreenState]);
}

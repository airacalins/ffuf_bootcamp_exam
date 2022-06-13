import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/models/export_models.dart';
import 'package:ffuf_bootcamp_exam/models/union_page_state.dart';

class AuthViewModel extends Vm {
  final UnionPageState<List<User>> unionPageState;

  AuthViewModel({required this.unionPageState})
      : super(equals: [unionPageState]);
}

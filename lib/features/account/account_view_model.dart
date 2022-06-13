import 'package:async_redux/async_redux.dart';

import 'package:ffuf_bootcamp_exam/models/export_models.dart';
import 'package:ffuf_bootcamp_exam/models/union_page_state.dart';

class AccountViewModel extends Vm {
  final UnionPageState<User?> unionPageState;

  AccountViewModel({
    required this.unionPageState,
  }) : super(equals: [unionPageState]);
}

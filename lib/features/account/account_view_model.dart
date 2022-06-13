import 'package:async_redux/async_redux.dart';

import 'package:ffuf_bootcamp_exam/models/export_models.dart';
import 'package:ffuf_bootcamp_exam/models/union_page_state.dart';

class AccountViewModel extends Vm {
  final List<User> users;
  final User loggedInUser;
  final User superior;

  AccountViewModel({
    required this.users,
    required this.loggedInUser,
    required this.superior,
  });
}

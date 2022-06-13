import 'package:async_redux/async_redux.dart';

import 'package:ffuf_bootcamp_exam/exports/export_models.dart';

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

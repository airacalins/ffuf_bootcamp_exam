import 'package:async_redux/async_redux.dart';

import 'package:ffuf_bootcamp_exam/exports/export_features.dart';
import 'package:ffuf_bootcamp_exam/exports/export_pages.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class BusinessCardFactory extends VmFactory<AppState, BusinessCardPage> {
  BusinessCardFactory(super.widget);

  @override
  Vm? fromStore() => BusinessCardViewModel(
        users: state.users,
        loggedInUser: state.loggedInUser!,
        superior: state.users
            .where(
              (user) => user.id == state.loggedInUser!.superiorId,
            )
            .first,
      );
}

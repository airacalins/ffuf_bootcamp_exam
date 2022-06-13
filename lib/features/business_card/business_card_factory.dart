import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/features/business_card/business_card_page.dart';

import 'package:ffuf_bootcamp_exam/features/business_card/business_card_view_model.dart';
import 'package:ffuf_bootcamp_exam/models/export_models.dart';
import 'package:ffuf_bootcamp_exam/models/union_page_state.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';

class BusinessCardFactory extends VmFactory<AppState, BusinessCardPage> {
  BusinessCardFactory(super.widget);

  @override
  Vm? fromStore() => BusinessCardViewModel(
        unionPageState: _getLoadingState(),
      );

  UnionPageState<User?> _getLoadingState() {
    if (state.loggedInUser == null) {
      return const UnionPageState.loading();
    } else {
      return UnionPageState(state.loggedInUser);
    }
  }
}

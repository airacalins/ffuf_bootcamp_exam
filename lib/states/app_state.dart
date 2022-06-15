import 'package:ffuf_bootcamp_exam/constants/strings_constant.dart';
import 'package:ffuf_bootcamp_exam/exports/export_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    required List<User> users,
    User? loggedInUser,
    required String activeSideNav,
  }) = _AppState;

  factory AppState.initialState({required}) => AppState(
        users: [],
        loggedInUser: null,
        activeSideNav: meinKonto,
      );

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}

import 'package:ffuf_bootcamp_exam/models/export_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    required List<User> users,
    User? loginUser,
  }) = _AppState;

  factory AppState.initialState({required}) => AppState(
        users: [],
        loginUser: null,
      );

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      loggedInUser: json['loggedInUser'] == null
          ? null
          : User.fromJson(json['loggedInUser'] as Map<String, dynamic>),
      activeSideNav: json['activeSideNav'] as String,
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'users': instance.users,
      'loggedInUser': instance.loggedInUser,
      'activeSideNav': instance.activeSideNav,
    };

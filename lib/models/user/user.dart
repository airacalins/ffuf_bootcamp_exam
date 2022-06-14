import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String id,
    required String firstName,
    required String lastName,
    required String imageUrl,
    required String email,
    required String position,
    required String companyName,
    required String address,
    required String telephone,
    required String fax,
    required String mobile,
    required String superiorId,
    required int annualLeave,
    required int remainingVacationEpos,
    required int requested,
    required int carryoverFromPreviousYear,
    required int currentBudget,
    required int sickDays,
    required int accumulatedHours,
    required int totalHours,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

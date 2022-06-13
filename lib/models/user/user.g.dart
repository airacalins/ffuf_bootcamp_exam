// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      imageUrl: json['imageUrl'] as String,
      email: json['email'] as String,
      position: json['position'] as String,
      address: json['address'] as String,
      telephone: json['telephone'] as String,
      fax: json['fax'] as String,
      mobile: json['mobile'] as String,
      superiorId: json['superiorId'] as String,
      annualLeave: json['annualLeave'] as int,
      remainingVacationEpos: json['remainingVacationEpos'] as int,
      requested: json['requested'] as int,
      carryoverFromPreviousYear: json['carryoverFromPreviousYear'] as int,
      currentBudget: json['currentBudget'] as int,
      sickDays: json['sickDays'] as int,
      accumulatedHours: json['accumulatedHours'] as int,
      totalHours: json['totalHours'] as int,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'imageUrl': instance.imageUrl,
      'email': instance.email,
      'position': instance.position,
      'address': instance.address,
      'telephone': instance.telephone,
      'fax': instance.fax,
      'mobile': instance.mobile,
      'superiorId': instance.superiorId,
      'annualLeave': instance.annualLeave,
      'remainingVacationEpos': instance.remainingVacationEpos,
      'requested': instance.requested,
      'carryoverFromPreviousYear': instance.carryoverFromPreviousYear,
      'currentBudget': instance.currentBudget,
      'sickDays': instance.sickDays,
      'accumulatedHours': instance.accumulatedHours,
      'totalHours': instance.totalHours,
    };

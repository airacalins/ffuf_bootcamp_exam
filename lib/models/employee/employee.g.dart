// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Employee _$$_EmployeeFromJson(Map<String, dynamic> json) => _$_Employee(
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
    );

Map<String, dynamic> _$$_EmployeeToJson(_$_Employee instance) =>
    <String, dynamic>{
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
    };

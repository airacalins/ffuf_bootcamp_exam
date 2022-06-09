// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<Employee>>(
          stream: Crud.fetchEmployees(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final employees = snapshot.data!;
              print("hello");
              print(snapshot.data);
              return ListView(
                children: List<Widget>.from(employees.map((employee) => Text(employee.firstName)).toList()),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

class Crud {
  static Stream<List<Employee>> fetchEmployees() => FirebaseFirestore.instance.collection('employees').snapshots().map((snapshot) => snapshot.docs.map((doc) => Employee.fromJson(doc.data())).toList());
}

class Employee {
  final String id;
  final String firstName;
  final String lastName;
  final String imageUrl;
  final String email;
  final String position;
  final String address;
  final String telephone;
  final String fax;
  final String mobile;

  Employee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
    required this.email,
    required this.position,
    required this.address,
    required this.telephone,
    required this.fax,
    required this.mobile,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'imageUrl': imageUrl,
      'email': email,
      'position': position,
      'address': address,
      'telephone': telephone,
      'fax': fax,
      'mobile': mobile,
    };
  }

  static Employee fromJson(Map<String, dynamic> map) {
    return Employee(
      id: map['id'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      imageUrl: map['imageUrl'] as String,
      email: map['email'] as String,
      position: map['position'] as String,
      address: map['address'] as String,
      telephone: map['telephone'] as String,
      fax: map['fax'] as String,
      mobile: map['mobile'] as String,
    );
  }
}

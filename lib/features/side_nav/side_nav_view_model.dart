// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

class SideNavViewModel extends Vm {
  final String navName;
  final Function setActiveNav;

  SideNavViewModel({
    required this.navName,
    required this.setActiveNav,
  }) : super(equals: []);
}

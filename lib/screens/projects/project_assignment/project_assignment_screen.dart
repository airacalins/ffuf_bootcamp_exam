import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/actions/employees/fetch_employees.dart';
import 'package:ffuf_bootcamp_exam/screens/projects/project_assignment/project_assignment_factory.dart';
import 'package:ffuf_bootcamp_exam/screens/projects/project_assignment/project_assignment_view_model.dart';
import 'package:ffuf_bootcamp_exam/states/app_state.dart';
import 'package:flutter/material.dart';

class ProjectAssignmentScreen extends StatelessWidget {
  const ProjectAssignmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ProjectAssignmentViewModel>(
      vm: () => ProjectAssignmentFactory(this),
      onInit: (store) async {
        await store.dispatch(FetchEmployees());
      },
      builder: (context, vm) => Scaffold(
        appBar: AppBar(title: Text('A')),
        body: ListView.builder(
          itemCount: vm.employees.length,
          itemBuilder: (BuildContext context, int index) {
            print("hi");
            return Text(vm.employees[index].firstName);
          },
        ),
      ),
    );
  }
}

import 'package:async_redux/async_redux.dart';
import 'package:ffuf_bootcamp_exam/features/projects/project_assignment/project_assignment_factory.dart';
import 'package:ffuf_bootcamp_exam/features/projects/project_assignment/project_assignment_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ffuf_bootcamp_exam/states/app_state.dart';
import 'package:ffuf_bootcamp_exam/actions/export_actions.dart';

class ProjectAssignmentScreen extends StatelessWidget {
  const ProjectAssignmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ProjectAssignmentViewModel>(
      vm: () => ProjectAssignmentFactory(this),
      onInit: (store) async {
        await store.dispatch(FetchUsers());
      },
      builder: (context, vm) => Scaffold(
        appBar: AppBar(leading: SvgPicture.asset('assets/icons/close.svg')),
        body: Column(
          children: [
            vm.unionScreenState.when(
              (users) => ListView.builder(
                shrinkWrap: true,
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) =>
                    Text(users[index].firstName),
              ),
              loading: () => const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              error: (message) => Center(
                child: Text(message!),
              ),
            )
          ],
        ),
      ),
    );
  }
}

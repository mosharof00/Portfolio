import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/project_details_controller.dart';

class ProjectDetailsView extends GetView<ProjectDetailsController> {
  const ProjectDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProjectDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProjectDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

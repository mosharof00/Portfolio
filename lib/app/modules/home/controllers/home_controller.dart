import 'package:get/get.dart';
import 'package:portfolio/app/models/project_model.dart';
import 'package:portfolio/app/models/speciality_model.dart';

import '../../../../global/global_snackbar.dart';
import '../../../../helper/logger.dart';
import '../../../models/project_demo_model.dart';
import '../../../repository/supabase_repository.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final SupabaseRepository _repository = SupabaseRepository();

  final projectList = <ProjectDemoModel>[].obs;
  final isProjectLoading = false.obs;

  final project = ProjectModel().obs;

  List<String> shopaholicSellerImages = [
    "https://degkxhvzbgmbprftuxra.supabase.co/storage/v1/object/public/images/shopaholic_seller/Group%20image.png",
    "https://degkxhvzbgmbprftuxra.supabase.co/storage/v1/object/public/images/shopaholic_seller/IMG-20250407-WA0007.jpg",
    "https://degkxhvzbgmbprftuxra.supabase.co/storage/v1/object/public/images/shopaholic_seller/IMG-20250407-WA0008.jpg",
    "https://degkxhvzbgmbprftuxra.supabase.co/storage/v1/object/public/images/shopaholic_seller/IMG-20250407-WA0013.jpg",
    "https://degkxhvzbgmbprftuxra.supabase.co/storage/v1/object/public/images/shopaholic_seller/IMG-20250407-WA0014.jpg"
  ];

  ///   Get worker
  Future<void> getProject() async {
    try {
      isProjectLoading.value = true;
      final response = await _repository.fetchSingleRowData(
          tableName: 'projects',
          column: 'id',
          value: "5605929d-62af-4d94-819c-ee1c977271df");

      if (response != null) {
        project.value = ProjectModel.fromJson(response);
      } else {
        Log.e("project not found");
      }
      isProjectLoading.value = false;
    } catch (e) {
      isProjectLoading.value = false;
      Log.e(e);
      globalSnackBar(
          title: "Error!",
          message: "Something went wrong. Please try again latter. \n$e");
    }
  }

  ///   fetch near by Jobs
  Future<void> fetchProjects() async {
    try {
      isProjectLoading.value = true;
      final response = await _repository.getProjects();
      Log.i(response);
      if (response.isNotEmpty) {
        projectList.value =
            response.map((data) => ProjectDemoModel.fromJson(data)).toList();
      } else {
        Log.w('No Project found!');
      }

      isProjectLoading.value = false;
    } catch (e) {
      Log.e(e);
      isProjectLoading.value = false;
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getProject();
    fetchProjects();
    super.onInit();
  }
}

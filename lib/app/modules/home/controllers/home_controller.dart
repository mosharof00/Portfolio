import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
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

  ///   for worked with
  final RxInt currentIndex = 0.obs;
  List<String> workedWith = [
    "☁️ Google Cloud",
    "📍 Google Maps & ETA",
    "📡 Pub/Sub Messaging",
    "🚀 Play Console",
    "🔥 ML Kit (OCR, Face, Barcode)",
    "📬 Push Notifications",
    "🔐 App Check & Rules",
    "🔗 Deep Linking",
    "⚙️ Remote Config",
    "🧠 Supabase Edge Fn",
    "🗃️ Supabase SQL & RPC",
    "💾 Local Storage (AES)",
    "🛵 Delivery Tracking",
    "💳 Payment Gateway",
    "🧾 Auto Invoices",
    "🛍️ Razorpay & Others",
    "🔒 Role-based Access",
    "📬 Realtime Chat",
    "✅ Typing Indicators",
    "🎥 Video Pay Features",
    "🔄 Route Restore",
    "🛡️ Root/JB Detection",
    "⚙️ CI/CD (Fastlane/GitHub)",
    "📈 Crash & Analytics",
  ];

  List<List<String>> get workedWithPagedList {
    const itemsPerPage = 3;
    List<List<String>> chunks = [];
    for (int i = 0; i < workedWith.length; i += itemsPerPage) {
      chunks.add(workedWith.sublist(
          i,
          i + itemsPerPage > workedWith.length
              ? workedWith.length
              : i + itemsPerPage));
    }
    return chunks;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getProject();
    fetchProjects();
    super.onInit();
  }
}

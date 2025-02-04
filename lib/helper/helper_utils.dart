
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../app/routes/app_pages.dart';
import '../app/services/local_store_config.dart';


class HelperUtils {
  static String currencySymbol = '\$';
  static String defaultProfileImage =
      // "https://i.pinimg.com/474x/18/b5/b5/18b5b599bb873285bd4def283c0d3c09.jpg";
      "https://i.pinimg.com/474x/3b/86/15/3b861585fde58a95329f64933535226d.jpg";
  static bool isOnboard = false;
  static bool isLoggedIn = false;
  static bool isAdmin = false;
  static double latitude = 0.0;
  static double longitude = 0.0;
  static String address = "";

  ///  app primary color
  static RxString isPrimaryColor = ''.obs;

  ///  user info
  static String userID = "";
  static String userRole = "";
  static String token = "";
  static String firebaseToken = "";

  ///   static user role name
  static String worker = 'worker';
  static String employer = 'employer';

  ///   auth type
  static String manualAuthType = 'manual';
  static String googleAuthType = 'google';
  static String facebookAuthType = 'facebook';
  //
  static Future<void> setUser({required String id, required String role,}) async {
    ///  store data into Hive
    HiveService.deleteUserID();
    HiveService.setUserID(id);
    HiveService.deleteUserRole();
    HiveService.setUserRole(role);
    // HiveService.deleteToken();
    // HiveService.setToken(token);
    // FirebaseDBService.addedUser(users[0], 'student');

    ///   Get data into static variables
    HelperUtils.userID = await HiveService.getUserID()?? '';
    // HelperUtils.token = await HiveService.getToken();
    HelperUtils.userRole = await HiveService.getUserRole()?? '';
    HelperUtils.isLoggedIn = true;

  }

  // ///   clear Existing current user
  // ///   For google sign in users
  // final FirebaseAuth auth = FirebaseAuth.instance;
  // final GoogleSignIn googleSignIn = GoogleSignIn();
  // static Future<void> clearUser() async {
  //   HiveService.deleteUserID();
  //   HiveService.deleteUserRole();
  //   HiveService.deleteToken();
  //
  //   if (HelperUtils.userRole == HelperUtils.instructor) {
  //     await HiveService.deleteStaticInstructor();
  //     await deleteInstructorPermanentController();
  //   } else {
  //     await HiveService.deleteStaticStudent();
  //     await deleteStudentPermanentController();
  //   }
  //   // Google Sign Out
  //   User? currentUser = FirebaseAuth.instance.currentUser;
  //   if (currentUser != null) {
  //     bool isGoogleSignIn = currentUser.providerData.any(
  //         (userInfo) => userInfo.providerId == GoogleAuthProvider.PROVIDER_ID);
  //     if (isGoogleSignIn) {
  //       final GoogleSignIn? googleSignIn = GoogleSignIn();
  //
  //       if (googleSignIn != null) {
  //         try {
  //           await googleSignIn.signOut();
  //           Log.i('User signed out from Google');
  //         } catch (e) {
  //           Log.e('Error signing out from Google: $e');
  //         }
  //       }
  //     }
  //     await FirebaseAuth.instance.signOut();
  //   } // Google Sign Out
  //
  //   HelperUtils.userID =
  //       await HiveService.getUserID() != null ? HiveService.getUserID() : "";
  //   HelperUtils.token =
  //       await HiveService.getToken() != null ? HiveService.getToken() : "";
  //   HelperUtils.userRole = await HiveService.getUserRole() != null
  //       ? HiveService.getUserRole()
  //       : "";
  //   Log.i(
  //       'user id:${HelperUtils.userID} \nuserRole: ${HelperUtils.userRole}  \nuserToken: ${HelperUtils.token}');
  //   HelperUtils.isPrimaryColor.value = HelperUtils.student;
  // }
  //
  // static navigateToOrder() {
  //   Get.delete<MainPageController>(force: true);
  //   Get.offAllNamed(Routes.MAIN_PAGE, arguments: {'index' : 3}); // Navigate to Dashboard
  //   Get.put(MainPageController(), permanent: true);
  //   Get.put(HomeController());
  //   Get.put(UserProfileController());
  // }
  //
  // static Locale locateLanguage() {
  //   return Locale(language(), language().toUpperCase());
  // }
  //
  // static String language() {
  //   return HiveService.getLanguage().split('_')[0] ?? 'en';
  // }
  //
  // static initializeStudentMainControllers() async {
  //   if (HelperUtils.userID != "") {
  //     Get.put(UserProfileController());
  //   } else {
  //     Log.e('UserId not found. Guest user!');
  //   }
  //   Get.put(MainPageController(), permanent: true);
  //   Get.put(HomeController(), permanent: true);
  // }
  //
  // static initializeMentorMainControllers() async {
  //   Get.put(UserProfileController());
  //   Get.put(AdminMainPageController(), permanent: true);
  //   Get.put(DashboardController(), permanent: true);
  // }
  //
  // static deleteStudentPermanentController() async {
  //   await Get.delete<HomeController>(force: true);
  //   await Get.delete<MainPageController>(force: true);
  // }
  //
  // static deleteInstructorPermanentController() async {
  //   await Get.delete<DashboardController>(force: true);
  //   await Get.delete<AdminMainPageController>(force: true);
  // }
}

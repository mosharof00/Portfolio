import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/routes/app_pages.dart';

import '../../../services/local_store_config.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  //TODO: Implement SplashController
  Future<void> _navigateToMainPage() async {
    await _setupApp();

     Get.put(HomeController(),permanent: true);
    // Future.delayed(Duration(seconds: 1));
    Get.offAllNamed(Routes.HOME);
  }


  ///  Initialization  Local Storage Hive, Firebase Notification
  Future<void> _setupApp() async {
    await HiveService.initHive();
    // final permission = await determinePosition();
    // HelperUtils.latitude = permission.latitude;
    // HelperUtils.longitude = permission.longitude;
    // String address = await LocationService.getAddressFromLatLng();
    // HelperUtils.address = address;
    // Log.i(address);
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // await NotificationManager().initialize();
    // String? firebaseToken;

    // if (Platform.isIOS) {
    //   // await FirebaseMessaging.instance.getAPNSToken();
    //   // firebaseToken = await FirebaseMessaging.instance.getToken();
    // } else {
    //   firebaseToken = await FirebaseMessaging.instance.getToken();
    // }
    //
    // if (firebaseToken != null) {
    //   HiveService.deleteFirebaseToken();
    //   HiveService.setFirebaseToken(firebaseToken);
    //   HelperUtils.firebaseToken = (await HiveService.getFirebaseToken())!;
    // }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    _navigateToMainPage();
    super.onInit();
  }
}

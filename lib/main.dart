import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/modules/home/bindings/home_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/services/local_store_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///    Initialize Firebase
  //
  //
  // await Firebase.initializeApp(
  //   name:AppConfig.appFirebase,
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  // await Supabase.initialize(
  //   url: AppConfig.SUPABASE_URL,
  //   anonKey: AppConfig.SUPABASE_ANON_KEY,
  // );

  await _setupApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) => GetMaterialApp(
        textDirection: TextDirection.ltr,
        // title: AppConfig.appName,
        title: 'Portfolio',
        debugShowCheckedModeBanner: false,

        ///  Routing Initialization
        initialRoute: AppPages.INITIAL,
        initialBinding: HomeBinding(),
        getPages: AppPages.routes,

        // ///  Language Initialization
        // translations: Languages(),
        // locale: HelperUtils.locateLanguage(),
        // fallbackLocale: HelperUtils.locateLanguage(),
      ),
      designSize: const Size(360, 800),
    );
  }
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

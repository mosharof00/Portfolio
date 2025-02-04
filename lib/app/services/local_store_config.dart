import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as pathprovider;
import '../../Helper/helper_utils.dart';
import '../../helper/logger.dart';

class HiveService {
  static late Box box;
  static late Box searchHistory;

  static Future<void> initHive() async {
    if (kIsWeb) {
      // Initialize Hive for Web
      await Hive.initFlutter();
    } else {
      // Initialize Hive for Mobile (Android/iOS)
      var dir = await pathprovider.getApplicationDocumentsDirectory();
      Hive.init(dir.path);
    }

    // Open Boxes
    box = await Hive.openBox('appData');
    searchHistory = await Hive.openBox('searchHistory');
  }

  /// User ID
  static void setUserID(String id) => box.put('id', id);
  static void deleteUserID() => box.delete('id');
  static Future<String?> getUserID() async => box.get('id');

  /// User Role
  static void setUserRole(String role) => box.put('role', role);
  static void deleteUserRole() => box.delete('role');
  static Future<String?> getUserRole() async => box.get('role');

  /// User Token
  static void setToken(String token) => box.put('token', token);
  static void deleteToken() => box.delete('token');
  static Future<String?> getToken() async => box.get('token');

  /// User Firebase token
  static void setFirebaseToken(String firebaseToken) => box.put('firebaseToken', firebaseToken);
  static void deleteFirebaseToken() => box.delete('firebaseToken');
  static Future<String?> getFirebaseToken() async => box.get('firebaseToken');

  /// Is Alert Showed
  static bool getAlertShowed() {
    final lastShownDate = box.get('alertLastShownDate');
    if (lastShownDate == null) return false;
    return DateTime.now().difference(lastShownDate).inDays < 1;
  }

  static void setAlertShowed(bool value) {
    value ? box.put('alertLastShownDate', DateTime.now()) : box.delete('alertLastShownDate');
  }

  /// Onboard Screen
  static Future<bool> getOnBoardShowed() async => box.get('onboard') ?? false;
  static void setOnBoardShowed(bool value) => value ? box.put('onboard', value) : box.delete('onboard');

  /// Login Status
  static Future<bool> checkLoginStatus() async {
    String? id = await box.get('id');
    if (id != null && id.isNotEmpty) {
      HelperUtils.isLoggedIn = true;
      HelperUtils.userID = id;
      Log.i('UserId: ${HelperUtils.userID}');
      return true;
    } else {
      HelperUtils.isLoggedIn = false;
      return false;
    }
  }

  static void setLanguage(String language) => box.put('language', language);
  static String getLanguage() => box.get('language', defaultValue: 'en_en');
}

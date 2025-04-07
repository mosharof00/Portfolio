import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/project_details/bindings/project_details_binding.dart';
import '../modules/project_details/views/project_details_view.dart';
import '../modules/projects/bindings/projects_binding.dart';
import '../modules/projects/views/projects_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROJECTS,
      page: () => const ProjectsView(),
      binding: ProjectsBinding(),
    ),
    GetPage(
      name: _Paths.PROJECT_DETAILS,
      page: () => const ProjectDetailsView(),
      binding: ProjectDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}

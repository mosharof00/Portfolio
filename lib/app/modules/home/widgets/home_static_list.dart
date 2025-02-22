import 'package:portfolio/gen/assets.gen.dart';

import '../../../models/speciality_model.dart';

class HomeStaticList {
// List of specialties
 static List<SpecialityModel> specialties = [
    SpecialityModel(
      title: "Cross-Platform App Development",
      icon: Assets.icons.upArrowIcon,
      description:
          "Building high-performance apps for iOS & Android using Flutter.",
    ),
    SpecialityModel(
      title: "State Management",
      icon: Assets.icons.upArrowIcon,
      description:
          "Expert in GetX, Riverpod, Provider, and BLoC for managing app state efficiently.",
    ),
    SpecialityModel(
      title: "UI/UX & Custom Animations",
      icon: Assets.icons.upArrowIcon,
      description:
          "Creating responsive, smooth, and visually appealing Flutter UI.",
    ),
    SpecialityModel(
      title: "Backend & API Integration",
      icon: Assets.icons.upArrowIcon,
      description:
          "Integrating REST API, GraphQL, Firebase, and WordPress APIs seamlessly.",
    ),
    SpecialityModel(
      title: "Database & Storage",
      icon: Assets.icons.upArrowIcon,
      description:
          "Working with Firestore, SQLite, Hive, and Isar for efficient data storage.",
    ),
    SpecialityModel(
      title: "CI/CD & Code Optimization",
      icon: Assets.icons.upArrowIcon,
      description:
          "Using FVM, GitHub Actions, and Fastlane for automated builds and deployments.",
    ),
  ];
}

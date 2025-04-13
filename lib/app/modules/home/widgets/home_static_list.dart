import 'package:portfolio/gen/assets.gen.dart';

import '../../../models/speciality_model.dart';

class HomeStaticList {
// List of specialties
  static List<SpecialityModel> specialties = [
    SpecialityModel(
      title: "Full-Stack Apps Development with Flutter",
      icon: Assets.icons.flutterIcon,
      description:
          "Expertise in building cross-platform applications using Flutter and Dart, from frontend UI/UX to backend integration and deployment.",
    ),
    SpecialityModel(
      title: "Backend Development with Fiber (Go) [Intermediate/Learning]",
      icon: Assets.icons.backendDevelopmentIccon,
      description:
          "Developing high-performance, scalable REST APIs and backend services using Fiber (Go) with database and cloud integrations. \nAnd expert in Firebase and Supabase.",
    ),
    SpecialityModel(
      title: "Clean Architecture & Design Patterns (GetX, BLoC)",
      icon: Assets.icons.cleanArchitectureIcon,
      description:
          "Applying Clean Architecture, MVVM, MVC, and Modular design principles using GetX and BLoC for scalable, maintainable Flutter apps.",
    ),
    SpecialityModel(
      title: "CI/CD, Performance Optimization & App Distribution",
      icon: Assets.icons.ciCdIcon,
      description:
          "Automating build, test, and deployment processes with GitHub Actions, optimizing performance, and managing app releases via Google Play Console.",
    ),
    SpecialityModel(
      title: "Cloud-Native & Real-Time Applications",
      icon: Assets.icons.cloudNativeRealTimeIcon,
      description:
          "Building real-time and cloud-native solutions with WebSocket, Firebase, Supabase, and REST APIs, ensuring seamless performance and scalability.",
    ),
    SpecialityModel(
      title: "Agile Methodologies",
      icon: Assets.icons.agileMethodologiesIcon,
      description:
          "Experienced in Agile development practices, sprint planning, and collaboration with cross-functional teams for rapid delivery and iteration.",
    ),
  ];
}

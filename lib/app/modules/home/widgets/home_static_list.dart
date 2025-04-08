import 'package:portfolio/gen/assets.gen.dart';

import '../../../models/speciality_model.dart';

class HomeStaticList {
// List of specialties
  static List<SpecialityModel> specialties = [
    SpecialityModel(
        title: "Mobile Apps Development",
        icon: Assets.icons.flutterIcon,
        description:
            "Cross-platform mobile application design and development with Flutter and Dart."),
    SpecialityModel(
        title: "Backend Development with Fiber(Go)",
        icon: Assets.icons.backendDevelopmentIccon,
        description:
            "Building scalable and efficient backend systems using Fiber and databases."),
    SpecialityModel(
        title: "Clean Architecture & Design Patterns (GetX, Block)",
        icon: Assets.icons.flutterIcon,
        description:
            "Implementing Clean Architecture, MVVM, MVC, and Modular Architecture for maintainable and scalable apps."),
    SpecialityModel(
        title: "CI/CD and App Distribution",
        icon: Assets.icons.flutterIcon,
        description:
            "Setting up CI/CD pipelines using GitHub Actions, Google Console for app distribution, and regular app maintenance."),
    SpecialityModel(
        title: "Problem-Solving & Debugging",
        icon: Assets.icons.flutterIcon,
        description:
            "Strong analytical abilities for troubleshooting and debugging complex issues, ensuring efficient app performance."),
    SpecialityModel(
        title: "Agile Methodologies",
        icon: Assets.icons.flutterIcon,
        description:
            "Experience working in Agile environments, managing tasks, and collaborating with cross-functional teams."),
    SpecialityModel(
        title: "E-Commerce Solutions",
        icon: Assets.icons.flutterIcon,
        description:
            "Developing complete e-commerce solutions with user-friendly UI and robust backend, including integration with payment systems."),
    SpecialityModel(
        title: "API Development & Integration",
        icon: Assets.icons.flutterIcon,
        description:
            "Building RESTful APIs and integrating third-party services into mobile and web applications."),
  ];
}

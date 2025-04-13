/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/agile_methodologies_icon.svg
  String get agileMethodologiesIcon =>
      'assets/icons/agile_methodologies_icon.svg';

  /// File path: assets/icons/arrow_back_icon.svg
  String get arrowBackIcon => 'assets/icons/arrow_back_icon.svg';

  /// File path: assets/icons/back.svg
  String get back => 'assets/icons/back.svg';

  /// File path: assets/icons/backend_development_iccon.svg
  String get backendDevelopmentIccon =>
      'assets/icons/backend_development_iccon.svg';

  /// File path: assets/icons/call_icon.svg
  String get callIcon => 'assets/icons/call_icon.svg';

  /// File path: assets/icons/ci_cd_icon.svg
  String get ciCdIcon => 'assets/icons/ci_cd_icon.svg';

  /// File path: assets/icons/clean_architecture_icon.svg
  String get cleanArchitectureIcon =>
      'assets/icons/clean_architecture_icon.svg';

  /// File path: assets/icons/cloud-native_real-time_icon.svg
  String get cloudNativeRealTimeIcon =>
      'assets/icons/cloud-native_real-time_icon.svg';

  /// File path: assets/icons/email_icon.svg
  String get emailIcon => 'assets/icons/email_icon.svg';

  /// File path: assets/icons/flutter_icon.svg
  String get flutterIcon => 'assets/icons/flutter_icon.svg';

  /// File path: assets/icons/git_logo.svg
  String get gitLogo => 'assets/icons/git_logo.svg';

  /// File path: assets/icons/link_logo.svg
  String get linkLogo => 'assets/icons/link_logo.svg';

  /// File path: assets/icons/linkden_logo.svg
  String get linkdenLogo => 'assets/icons/linkden_logo.svg';

  /// File path: assets/icons/message_icon.svg
  String get messageIcon => 'assets/icons/message_icon.svg';

  /// File path: assets/icons/up_arrow_icon.svg
  String get upArrowIcon => 'assets/icons/up_arrow_icon.svg';

  /// List of all assets
  List<String> get values => [
    agileMethodologiesIcon,
    arrowBackIcon,
    back,
    backendDevelopmentIccon,
    callIcon,
    ciCdIcon,
    cleanArchitectureIcon,
    cloudNativeRealTimeIcon,
    emailIcon,
    flutterIcon,
    gitLogo,
    linkLogo,
    linkdenLogo,
    messageIcon,
    upArrowIcon,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/empty_result.png
  AssetGenImage get emptyResult =>
      const AssetGenImage('assets/images/empty_result.png');

  /// File path: assets/images/error_image.jpg
  AssetGenImage get errorImage =>
      const AssetGenImage('assets/images/error_image.jpg');

  /// File path: assets/images/home_icon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('assets/images/home_icon.png');

  /// File path: assets/images/mosharof_header_image.svg
  String get mosharofHeaderImage => 'assets/images/mosharof_header_image.svg';

  /// File path: assets/images/mosharof_header_png.png
  AssetGenImage get mosharofHeaderPng =>
      const AssetGenImage('assets/images/mosharof_header_png.png');

  /// File path: assets/images/mosharof_smarter_image.svg
  String get mosharofSmarterImage => 'assets/images/mosharof_smarter_image.svg';

  /// File path: assets/images/mosharof_smarter_png.png
  AssetGenImage get mosharofSmarterPng =>
      const AssetGenImage('assets/images/mosharof_smarter_png.png');

  /// File path: assets/images/placeholder_image.jpg
  AssetGenImage get placeholderImage =>
      const AssetGenImage('assets/images/placeholder_image.jpg');

  /// File path: assets/images/shape_image.png
  AssetGenImage get shapeImage =>
      const AssetGenImage('assets/images/shape_image.png');

  /// List of all assets
  List<dynamic> get values => [
    emptyResult,
    errorImage,
    homeIcon,
    mosharofHeaderImage,
    mosharofHeaderPng,
    mosharofSmarterImage,
    mosharofSmarterPng,
    placeholderImage,
    shapeImage,
  ];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/app_logo.png
  AssetGenImage get appLogo => const AssetGenImage('assets/logo/app_logo.png');

  /// File path: assets/logo/splash_app_logo.png
  AssetGenImage get splashAppLogo =>
      const AssetGenImage('assets/logo/splash_app_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [appLogo, splashAppLogo];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

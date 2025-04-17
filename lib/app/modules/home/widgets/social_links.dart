import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../global/custom_icon_button.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,

      children: [
        CustomIconButton(
            size: 20,
            backgroundColor: Colors.white,
            onPressed: () async {
              if (!await launchUrl(Uri.parse(
                  "https://github.com/mosharof00"))) {
                throw Exception(
                    'Could not launch : https://github.com/mosharof00');
              }
            },
            icon: SvgPicture.asset(Assets.icons.gitLogo)),

        CustomIconButton(
            size: 20,
            backgroundColor: Colors.white,
            onPressed: () async {
              if (!await launchUrl(Uri.parse(
                  "https://www.linkedin.com/in/mosharof-khan/"))) {
                throw Exception(
                    'Could not launch : https://www.linkedin.com/in/mosharof-khan/');
              }
            },
            icon: SvgPicture.asset(
              Assets.icons.linkdenLogo,
              height: Get.height,
              width: Get.width,
            )),

        IconButton(
          color: Colors.white,
          onPressed: () async {
            if (!await launchUrl(Uri.parse(
                "https://www.facebook.com/mdmosharofkhan.khan.3"))) {
              throw Exception(
                  'https://www.facebook.com/mdmosharofkhan.khan.3');
            }
          },
          padding: EdgeInsets.zero,
          icon: Icon(
            size: 25,
            Icons.facebook,
            color: Colors.black,
          ),
        ),
        CustomIconButton(
            size: 20,
            backgroundColor: Colors.white,
            onPressed: () async {
              // if (!await launchUrl(Uri.parse(""))) {
              //   throw Exception('Could not launch : ');
              // }
            },
            icon: SvgPicture.asset(
              Assets.icons.linkLogo,
              height: Get.height,
              width: Get.width,
            )),
      ],
    );
  }
}

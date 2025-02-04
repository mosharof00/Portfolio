import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portfolio/global/sizedbox_extension.dart';

import '../gen/assets.gen.dart';
import 'app_text_style.dart';

class ShowEmptyResult extends StatelessWidget {
  const ShowEmptyResult(
      {super.key, this.height, this.width, this.title, this.desc});
  final double? height;
  final double? width;

  final String? title;
  final String? desc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.images.emptyResult.path,
            height: height,
            width: width ?? Get.width,
          ),
          20.height,
          AppTextStyle(
            text: title ?? 'No restaurant found!',
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          5.height,
          AppTextStyle(
            text: desc ??
                'No restaurants found nearby your location. Try exploring a wider area or check again later!',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

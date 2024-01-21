import 'package:easy_testing/core/constant/app_colors.dart';

import '../../../controller/items_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_asset.dart';
import '../../../core/constant/app_styles.dart';

class LocationButton extends GetView<ItemsDetailsControllerImp> {
  const LocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.tapChanged(1);
        },
        child: GetBuilder<ItemsDetailsControllerImp>(
            builder: (controller) => Container(
                  width: 104,
                  height: 32,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: controller.currentTap == 1
                        ? AppColors.primaryColor
                        : AppColors.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppAsset.marker,
                          width: 12.0,
                          height: 12.0,
                          color: controller.currentTap == 1
                              ? AppColors.white
                              : AppColors.thirdColor),
                      const SizedBox(width: 10),
                      Text(
                        'الموقع',
                        textAlign: TextAlign.center,
                        style: AppStyles.style12.copyWith(
                          color: controller.currentTap == 1
                              ? AppColors.white
                              : AppColors.thirdColor,
                        ),
                      ),
                    ],
                  ),
                )));
  }
}

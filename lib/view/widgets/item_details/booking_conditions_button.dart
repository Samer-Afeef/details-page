import 'package:easy_testing/core/constant/app_colors.dart';

import '../../../controller/items_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_asset.dart';
import '../../../core/constant/app_styles.dart';

class BookingConditionsButton extends GetView<ItemsDetailsControllerImp> {
  const BookingConditionsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.tapChanged(2);
        },
        child: GetBuilder<ItemsDetailsControllerImp>(
          builder: (controller) => Container(
              width: 104,
              height: 32,
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: controller.currentTap == 2
                    ? AppColors.primaryColor
                    : AppColors.secondaryColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAsset.check,
                      width: 12.0,
                      height: 12.0,
                      color: controller.currentTap == 2
                          ? AppColors.white
                          : AppColors.thirdColor),
                  const SizedBox(width: 10),
                  Text(
                    'شروط الحجز',
                    textAlign: TextAlign.center,
                    style: AppStyles.style12.copyWith(
                      color: controller.currentTap == 2
                          ? AppColors.white
                          : AppColors.thirdColor,
                    ),
                  ),
                ],
              )),
        ));
  }
}

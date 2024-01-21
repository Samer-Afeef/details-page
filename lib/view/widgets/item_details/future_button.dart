import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../controller/items_details_controller.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_asset.dart';
import '../../../core/constant/app_styles.dart';

class FutureButton extends GetView<ItemsDetailsControllerImp> {
  const FutureButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.tapChanged(0);
        },
        child: GetBuilder<ItemsDetailsControllerImp>(
            builder: (controller) => Container(
                  width: 104,
                  height: 32,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: controller.currentTap == 0
                        ? AppColors.primaryColor
                        : AppColors.secondaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppAsset.gem,
                          width: 12.0,
                          height: 12.0,
                          color: controller.currentTap == 0
                              ? AppColors.white
                              : AppColors.thirdColor),
                      const SizedBox(width: 10),
                      Text('المميزات',
                          textAlign: TextAlign.center,
                          style: AppStyles.style12.copyWith(
                            color: controller.currentTap == 0
                                ? AppColors.white
                                : AppColors.thirdColor,
                          )),
                    ],
                  ),
                )));
  }
}

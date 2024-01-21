import 'package:easy_testing/controller/items_details_controller.dart';
import 'package:easy_testing/core/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CenterPageDetails extends GetView<ItemsDetailsControllerImp> {
  const CenterPageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox(
        height: 53,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 21,
                  child: Text(
                    'نوع الوحدة: ${controller.data[0].detailsType}',
                    textAlign: TextAlign.center,
                    style: AppStyles.style14,
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 21,
                  child: Text(
                    'رقم الوحدة: ${controller.data[0].detailsNumber}',
                    style: AppStyles.style14Bold500.copyWith(
                      color: const Color(0xFFBCBCBC),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 21,
                  child: Text(
                    'الإيجار السنوي',
                    style: AppStyles.style14,
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: 107,
                  height: 21,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${controller.data[0].detailsAnnualRent} ',
                          style: AppStyles.style16
                              .copyWith(color: const Color(0xFFFFC746)),
                        ),
                        TextSpan(
                          text: 'ر.س',
                          style: AppStyles.style16.copyWith(
                            color: const Color(0xFFBCBCBC),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

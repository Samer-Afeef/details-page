import 'package:easy_testing/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/items_details_controller.dart';
import './future_button.dart';
import './booking_conditions_button.dart';
import './location_button.dart';
class CustomTabBar extends GetView<ItemsDetailsControllerImp> {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 32,
      decoration: const ShapeDecoration(
        color: AppColors.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(5),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  const [
          FutureButton(),
          LocationButton(),
          BookingConditionsButton()
        ],
      ),
    );
  }
}

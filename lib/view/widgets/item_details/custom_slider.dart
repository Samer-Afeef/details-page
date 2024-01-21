import 'package:easy_testing/view/widgets/item_details/booking_conditions_view.dart';
import 'package:easy_testing/view/widgets/item_details/features_view.dart';
import 'package:easy_testing/view/widgets/item_details/location_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/items_details_controller.dart';

import '../../../core/constant/app_colors.dart';


class CustomSlider extends GetView<ItemsDetailsControllerImp> {
  const CustomSlider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.pageChanged(val);
      },
      children:  [
        FeaturesView(detailsViewModel: controller.data[0]),
       const LocationView(),
        const BookingConditionsView(),
      ],
    );
  }
}

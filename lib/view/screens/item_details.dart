import 'package:easy_testing/core/class/handling_data.dart';
import 'package:easy_testing/core/constant/app_colors.dart';
import 'package:easy_testing/core/constant/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/items_details_controller.dart';
import '../widgets/item_details/center_page_details.dart';
import '../widgets/item_details/custom_appbar.dart';
import '../widgets/item_details/custom_slider.dart';
import '../widgets/item_details/custom_tab_bar.dart';
import '../widgets/item_details/top_page_details.dart';

class ItemDetails extends GetView<ItemsDetailsControllerImp> {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: customAppBar(),
        body: GetBuilder<ItemsDetailsControllerImp>(
          builder: (controller) => HandlingDataView(
            loading: AppAsset.loadingItemDetails,
            onResetLoading: () {
              controller.initialData();
            },
            statusRequest: controller.statusRequest,
            loadingHeight: double.infinity,
            loadingWidth: double.infinity,
            widget: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
              child: Column(
                children: const [
                  TopPageDetails(),
                  CenterPageDetails(),
                  CustomTabBar(),
                  Expanded(child: CustomSlider())
                ],
              ),
            ),
          ),
        ));
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../core/class/status_request.dart';

import '../core/functions/handling_data_controller.dart';
import '../data/data_source/remote/item_details_data.dart';
import '../data/model/details_view_model.dart';

abstract class ItemsDetailsController extends GetxController {
  getData();

  initialData();

  tapChanged(int index);

  pageChanged(int index);
}

class ItemsDetailsControllerImp extends ItemsDetailsController {
  ItemDetailsData itemDetailsData = ItemDetailsData(crud: Get.find());

  List<DetailsViewModel> data = [];

  StatusRequest statusRequest = StatusRequest.none;

  int currentTap = 0;
  late PageController pageController;

  late Completer<GoogleMapController> controlCompleter;

  late CameraPosition cameraPosition;

  List<Marker> markers = [];

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  @override
  initialData() async {
    pageController = PageController();
    await getData();
    cameraPosition = CameraPosition(
      target: LatLng(data[0].detailsAddressLat!, data[0].detailsAddressLong!),
      zoom: 14.4746,
    );
    markers.add(Marker(
      markerId: const MarkerId("1"),
      position: LatLng(data[0].detailsAddressLat!, data[0].detailsAddressLong!),
    ));
    controlCompleter = Completer<GoogleMapController>();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await itemDetailsData.view();
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      List responseData = response['data'];
      data.clear();
      data.addAll(responseData.map((e) => DetailsViewModel.fromJson(e)));
    }
    update();
  }

  @override
  tapChanged(int index) {
    if (index == 1) {
      controlCompleter = Completer<GoogleMapController>();
    }
    currentTap = index;
    pageController.jumpToPage(
      currentTap,
    );
    update();
  }

  @override
  pageChanged(int index) {
    if (index == 1) {
      controlCompleter = Completer<GoogleMapController>();
    }
    currentTap = index;
    update();
  }
}

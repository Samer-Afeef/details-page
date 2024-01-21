import 'package:easy_testing/controller/items_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/constant/app_styles.dart';

class LocationView extends GetView<ItemsDetailsControllerImp> {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0),
          const Text(
            'الموقع',
            style: AppStyles.style12,
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            width: 287,
            height: 32,
            child: Text(
              controller.data[0].detailsAddressDesc!,
              textAlign: TextAlign.right,
              style: AppStyles.style10,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: GoogleMap(
              mapType: MapType.normal,
              markers: controller.markers.toSet(),
              initialCameraPosition: controller.cameraPosition,
              onMapCreated: (GoogleMapController controllerMap) {
                controller.controlCompleter.complete(controllerMap);
              },
            ),
          )
        ],
      ),
    );
  }
}

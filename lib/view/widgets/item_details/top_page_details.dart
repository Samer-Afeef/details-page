import 'package:flutter/material.dart';

import '../../../core/constant/app_asset.dart';

class TopPageDetails extends StatelessWidget {
  const TopPageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 267,
      decoration: ShapeDecoration(
        image: const DecorationImage(
          image: AssetImage(AppAsset.propertyImage),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

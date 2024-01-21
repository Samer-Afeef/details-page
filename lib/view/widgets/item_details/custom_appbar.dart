import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_asset.dart';
import '../../../core/constant/app_styles.dart';

  AppBar customAppBar() {
    return AppBar(
    backgroundColor: AppColors.backgroundColor,
    title:  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(AppAsset.ellipse,width: 24.0,height: 24.0,),
            SvgPicture.asset(AppAsset.vector,width: 14.0,height: 13.0,),
          ],
        ),
        const  SizedBox(width: 16,),
        const Text(
            'تفاصيل الوحدة',
            style: AppStyles.style16
        ),
      ],
    ),
  );
  }

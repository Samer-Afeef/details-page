import 'package:easy_testing/core/constant/app_styles.dart';
import 'package:easy_testing/data/model/details_view_model.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../../core/constant/app_asset.dart';

class FeaturesView extends StatelessWidget {
  final DetailsViewModel detailsViewModel;

  const FeaturesView({Key? key, required this.detailsViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0),
          const Text(
            'شقة أنيقة للإيجار',
            style: AppStyles.style12,
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 58,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppAsset.bad,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          "${detailsViewModel.detailsNumRooms} غرف",
                          style: AppStyles.style14Bold500,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppAsset.bathroom,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          "${detailsViewModel.detailsNumBathrooms} حمامات",
                          style: AppStyles.style14Bold500,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 32,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppAsset.bad,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          "${detailsViewModel.detailsNumLivingRooms} صالون",
                          style: AppStyles.style14Bold500,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    if (detailsViewModel.detailsCarParking == 1)
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppAsset.car,
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          const Text(
                            "موقف سيارات",
                            style: AppStyles.style14Bold500,
                          )
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
              "تصميم الشقة:\nشقة بتصميم فريد يجمع بين الطابع الكلاسيكي واللمسات الحديثة.\nالمساحات الكبيرة والنوافذ الكبيرة تخلق أجواءً مشرقة وودية.\nالمطبخ مجهز بأحدث التقنيات والأجهزة، مع مساحة لتناول الطعام الصغير.\nتجهيزات فاخرة:\nالأرضيات الرخامية والتشطيبات الفاخرة تضفي لمسة من الفخامة.\nنظام تدفئة وتبريد مركزي.",
              style: AppStyles.style10)
        ],
      ),
    );
  }
}

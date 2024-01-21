import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../core/constant/app_colors.dart';
import '../../core/constant/app_asset.dart';
import './status_request.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  final String? loading;
  final double? loadingWidth;
  final double? loadingHeight;
  final void Function()? onResetLoading;

  const HandlingDataView({
    Key? key,
    required this.statusRequest,
    required this.widget,
    this.loading,
    this.loadingWidth,
    this.loadingHeight,
    this.onResetLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Container(
            color: AppColors.backgroundColor,
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Lottie.asset(loading ?? AppAsset.loading,
                  width: loadingWidth ?? 250, height: loadingHeight ?? 250),
            ),
          )
        : statusRequest == StatusRequest.offlineFailure
            ? Column(
                children: [
                  Container(
                    color: AppColors.backgroundColor,
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Lottie.asset(
                        AppAsset.offLine,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: onResetLoading,
                      child: const Text(
                        "إضغط لإعادة المحاولة",
                      ))
                ],
              )
            : statusRequest == StatusRequest.serverFailure
                ? Container(
                    color: AppColors.backgroundColor,
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Lottie.asset(
                        AppAsset.server,
                      ),
                    ),
                  )
                : statusRequest == StatusRequest.failure
                    ? Container(
                        padding: const EdgeInsets.all(20.0),
                        color: AppColors.backgroundColor,
                        child: Center(
                          child: Lottie.asset(
                            AppAsset.noData,
                          ),
                        ),
                      )
                    : widget;
  }
}

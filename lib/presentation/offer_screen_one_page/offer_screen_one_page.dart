import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_title.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/custom_app_bar.dart';

class OfferScreenOnePage extends StatelessWidget {
  const OfferScreenOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarTitle(
                    text: "Offer", margin: EdgeInsets.only(left: 16.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgNotificationicon,
                      margin: EdgeInsets.fromLTRB(13.h, 16.v, 13.h, 15.v),
                      onTap: () {
                        onTapNotificationico(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v),
                child: Column(children: [
                  Container(
                      width: 343.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 17.v),
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: SizedBox(
                          width: 201.h,
                          child: Text("Use “MEGSL” Cupon For Get 90%off",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .titleMediumOnPrimaryContainer
                                  .copyWith(height: 1.50)))),
                  SizedBox(height: 16.v),
                  SizedBox(
                      height: 206.v,
                      width: 343.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPromotionimage,
                            height: 206.v,
                            width: 343.h,
                            radius: BorderRadius.circular(5.h),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: 209.h,
                                          child: Text(
                                              "Super Flash Sale\n50% Off",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme
                                                  .textTheme.headlineSmall!
                                                  .copyWith(height: 1.50))),
                                      SizedBox(height: 31.v),
                                      Row(children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9.h, vertical: 8.v),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                            child: Text("08",
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 4.h,
                                                top: 10.v,
                                                bottom: 9.v),
                                            child: Text(":",
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimaryContainer)),
                                        Container(
                                            margin: EdgeInsets.only(left: 4.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9.h, vertical: 8.v),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                            child: Text("34",
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 4.h,
                                                top: 10.v,
                                                bottom: 9.v),
                                            child: Text(":",
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimaryContainer)),
                                        Container(
                                            margin: EdgeInsets.only(left: 4.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.h,
                                                vertical: 8.v),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                            child: Text("52",
                                                style: theme
                                                    .textTheme.titleMedium))
                                      ])
                                    ])))
                      ])),
                  SizedBox(height: 16.v),
                  SizedBox(
                      height: 206.v,
                      width: 343.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRecomendedproduct,
                            height: 206.v,
                            width: 343.h,
                            radius: BorderRadius.circular(5.h),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 24.h, top: 31.v),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: 252.h,
                                          child: Text("90% Off Super Mega Sale",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme
                                                  .textTheme.headlineSmall!
                                                  .copyWith(height: 1.50))),
                                      SizedBox(height: 21.v),
                                      Text("Special birthday Lafyuu",
                                          style: CustomTextStyles
                                              .bodySmallOnPrimaryContainer)
                                    ])))
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the notificationOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationOneScreen.
  onTapNotificationico(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationOneScreen);
  }
}

import '../product_detail_screen/widgets/recomended_item_widget.dart';
import '../product_detail_screen/widgets/sizes_item_widget.dart';
import '../product_detail_screen/widgets/slider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_ex_todo2/widgets/custom_elevated_button.dart';
import 'package:flutter_ex_todo2/widgets/custom_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductDetailScreen extends StatelessWidget {
  ProductDetailScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "Nike Air Max 270 Rea...",
                    margin: EdgeInsets.only(left: 12.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgNavexplore,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 15.h),
                      onTap: () {
                        onTapSearchiconone(context);
                      }),
                  AppbarImage1(
                      svgPath: ImageConstant.imgMoreicon,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 31.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 12.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CarouselSlider.builder(
                                        options: CarouselOptions(
                                            height: 238.v,
                                            initialPage: 0,
                                            autoPlay: true,
                                            viewportFraction: 1.0,
                                            enableInfiniteScroll: false,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, reason) {
                                              sliderIndex = index;
                                            }),
                                        itemCount: 1,
                                        itemBuilder:
                                            (context, index, realIndex) {
                                          return SliderItemWidget();
                                        }),
                                    SizedBox(height: 16.v),
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: 8.v,
                                            child: AnimatedSmoothIndicator(
                                                activeIndex: sliderIndex,
                                                count: 1,
                                                axisDirection: Axis.horizontal,
                                                effect: ScrollingDotsEffect(
                                                    spacing: 8,
                                                    activeDotColor: theme
                                                        .colorScheme.primary,
                                                    dotColor: appTheme.blue50,
                                                    dotHeight: 8.v,
                                                    dotWidth: 8.h)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 15.v,
                                                right: 16.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                      child: SizedBox(
                                                          width: 275.h,
                                                          child: Text(
                                                              "Nike Air Zoom Pegasus 36 Miami",
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .titleLargeOnPrimary
                                                                  .copyWith(
                                                                      height:
                                                                          1.50)))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgDownload,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 44.h,
                                                          top: 2.v,
                                                          bottom: 32.v))
                                                ]))),
                                    CustomRatingBar(
                                        margin: EdgeInsets.only(
                                            left: 16.h, top: 9.v),
                                        initialRating: 4,
                                        itemSize: 16),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 16.v),
                                        child: Text("299,43",
                                            style: theme.textTheme.titleLarge)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 22.v),
                                        child: Text("Select Size",
                                            style: theme.textTheme.titleSmall)),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            height: 61.v,
                                            child: ListView.separated(
                                                padding: EdgeInsets.only(
                                                    left: 16.h, top: 13.v),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(width: 16.h);
                                                },
                                                itemCount: 6,
                                                itemBuilder: (context, index) {
                                                  return SizesItemWidget();
                                                }))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 23.v),
                                        child: Text("Select Color",
                                            style: theme.textTheme.titleSmall)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgColors,
                                        height: 48.v,
                                        width: 359.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, top: 12.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 24.v),
                                        child: Text("Specification",
                                            style: theme.textTheme.titleSmall)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 12.v,
                                                right: 16.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 45.v),
                                                      child: Text("Shown:",
                                                          style: CustomTextStyles
                                                              .bodySmallOnPrimary)),
                                                  SizedBox(
                                                      width: 169.h,
                                                      child: Text(
                                                          "Laser Blue/Anthracite/Watermelon/White",
                                                          maxLines: 3,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: theme.textTheme
                                                              .bodySmall!
                                                              .copyWith(
                                                                  height:
                                                                      1.80)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 18.v,
                                                right: 16.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 1.v),
                                                      child: Text("Style:",
                                                          style: CustomTextStyles
                                                              .bodySmallOnPrimary)),
                                                  Text("CD0113-400",
                                                      style: theme
                                                          .textTheme.bodySmall)
                                                ]))),
                                    Container(
                                        width: 320.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, top: 19.v, right: 38.h),
                                        child: Text(
                                            "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                                            maxLines: 4,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.80))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 23.v,
                                                right: 16.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Review Product",
                                                      style: theme.textTheme
                                                          .titleSmall),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtSeemorelink(
                                                            context);
                                                      },
                                                      child: Text("See More",
                                                          style: CustomTextStyles
                                                              .titleSmallPrimary))
                                                ]))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 8.v),
                                        child: Row(children: [
                                          CustomRatingBar(
                                              initialRating: 4, itemSize: 16),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("4.5",
                                                  style: CustomTextStyles
                                                      .labelMediumBluegray300)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Text("(5 Review)",
                                                  style: CustomTextStyles
                                                      .bodySmall10))
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 16.v),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgProfilepicture,
                                              height: 48.adaptSize,
                                              width: 48.adaptSize,
                                              radius:
                                                  BorderRadius.circular(24.h)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.h,
                                                  top: 2.v,
                                                  bottom: 4.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("James Lawson",
                                                        style: theme.textTheme
                                                            .titleSmall),
                                                    SizedBox(height: 4.v),
                                                    CustomRatingBar(
                                                        initialRating: 4,
                                                        itemSize: 16)
                                                  ]))
                                        ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: 339.h,
                                            margin: EdgeInsets.only(
                                                left: 16.h,
                                                top: 18.v,
                                                right: 19.h),
                                            child: Text(
                                                "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.bodySmall!
                                                    .copyWith(height: 1.80)))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 16.v),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgProductpicture02,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize,
                                              radius:
                                                  BorderRadius.circular(8.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgProductpicture03,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize,
                                              radius:
                                                  BorderRadius.circular(8.h),
                                              margin:
                                                  EdgeInsets.only(left: 12.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgProductpicture01,
                                              height: 72.adaptSize,
                                              width: 72.adaptSize,
                                              radius:
                                                  BorderRadius.circular(5.h),
                                              margin:
                                                  EdgeInsets.only(left: 12.h))
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 16.v),
                                        child: Text("December 10, 2016",
                                            style:
                                                CustomTextStyles.bodySmall10)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 23.v),
                                        child: Text("You Might Also Like",
                                            style:
                                                CustomTextStyles.titleSmall_1)),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            height: 249.v,
                                            child: ListView.separated(
                                                padding: EdgeInsets.only(
                                                    left: 16.h, top: 11.v),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(width: 16.h);
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return RecomendedItemWidget();
                                                })))
                                  ]))))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "Add To Cart",
                margin:
                    EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the searchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchScreen.
  onTapSearchiconone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  /// Navigates to the reviewProductScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the reviewProductScreen.
  onTapTxtSeemorelink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewProductScreen);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_ex_todo2/widgets/custom_elevated_button.dart';
import 'package:flutter_ex_todo2/widgets/custom_icon_button.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

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
                    text: "Order Details",
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 27.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 57.v,
                                        width: 342.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 12.v),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            SizedBox(
                                                                width: 96.h,
                                                                child: Divider(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .primary)),
                                                            SizedBox(
                                                                width: 96.h,
                                                                child: Divider(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .primary)),
                                                            SizedBox(
                                                                width: 96.h,
                                                                child:
                                                                    Divider())
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(children: [
                                                          CustomIconButton(
                                                              height:
                                                                  24.adaptSize,
                                                              width:
                                                                  24.adaptSize,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.h),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .fillPrimaryTL12,
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgPacing)),
                                                          SizedBox(
                                                              height: 15.v),
                                                          Text("Packing",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)
                                                        ]),
                                                        Column(children: [
                                                          CustomIconButton(
                                                              height:
                                                                  24.adaptSize,
                                                              width:
                                                                  24.adaptSize,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.h),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .fillPrimaryTL12,
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgPacing)),
                                                          SizedBox(
                                                              height: 15.v),
                                                          Text("Shipping",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)
                                                        ]),
                                                        Column(children: [
                                                          CustomIconButton(
                                                              height:
                                                                  24.adaptSize,
                                                              width:
                                                                  24.adaptSize,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.h),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .fillPrimaryTL12,
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgPacing)),
                                                          SizedBox(
                                                              height: 15.v),
                                                          Text("Arriving",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)
                                                        ]),
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCheckmarkBlue50,
                                                                  height: 24
                                                                      .adaptSize,
                                                                  width: 24
                                                                      .adaptSize,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              13.h)),
                                                              SizedBox(
                                                                  height: 13.v),
                                                              Text("Success",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall)
                                                            ])
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 24.v),
                                        child: Text("Product",
                                            style: theme.textTheme.titleSmall)),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 12.v),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15.v),
                                        decoration: AppDecoration.outlineBlue
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImageproduct,
                                                  height: 72.adaptSize,
                                                  width: 72.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      5.h),
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 1.v)),
                                              Column(children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                          width: 150.h,
                                                          child: Text(
                                                              "Nike Air Zoom Pegasus 36 Miami",
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge!
                                                                  .copyWith(
                                                                      height:
                                                                          1.50))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgLoveicon,
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 20.h,
                                                                  bottom:
                                                                      10.v)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgTrashicon,
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 8.h,
                                                                  bottom: 10.v))
                                                    ]),
                                                SizedBox(height: 17.v),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text("299,43",
                                                          style: CustomTextStyles
                                                              .labelLargePrimary),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFolder,
                                                          height: 20.v,
                                                          width: 33.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 67.h)),
                                                      SizedBox(
                                                          height: 20.v,
                                                          width: 41.h,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: 20
                                                                            .v,
                                                                        width: 41
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color: appTheme
                                                                                .blue50,
                                                                            border: Border.all(
                                                                                color: appTheme.blue50,
                                                                                width: 1.h,
                                                                                strokeAlign: strokeAlignCenter)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child: Opacity(
                                                                        opacity:
                                                                            0.5,
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 17.h),
                                                                            child: Text("1", style: CustomTextStyles.bodySmallOnPrimary_2))))
                                                              ])),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlus,
                                                          height: 20.v,
                                                          width: 33.h)
                                                    ])
                                              ])
                                            ])),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 8.v),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 15.v),
                                        decoration: AppDecoration.outlineBlue
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgProductimage1,
                                                  height: 72.adaptSize,
                                                  width: 72.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      5.h),
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 1.v)),
                                              Column(children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                          width: 150.h,
                                                          child: Text(
                                                              "Nike Air Zoom Pegasus 36 Miami",
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge!
                                                                  .copyWith(
                                                                      height:
                                                                          1.50))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgDownload,
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 20.h,
                                                                  bottom:
                                                                      10.v)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgTrashicon,
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 8.h,
                                                                  bottom: 10.v))
                                                    ]),
                                                SizedBox(height: 17.v),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text("299,43",
                                                          style: CustomTextStyles
                                                              .labelLargePrimary),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFolder,
                                                          height: 20.v,
                                                          width: 31.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 71.h)),
                                                      SizedBox(
                                                          height: 20.v,
                                                          width: 39.h,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: 20
                                                                            .v,
                                                                        width: 39
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color: appTheme
                                                                                .blue50,
                                                                            border: Border.all(
                                                                                color: appTheme.blue50,
                                                                                width: 1.h,
                                                                                strokeAlign: strokeAlignCenter)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child: Opacity(
                                                                        opacity:
                                                                            0.5,
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 16.h),
                                                                            child: Text("1", style: CustomTextStyles.bodySmallOnPrimary_2))))
                                                              ])),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlus,
                                                          height: 20.v,
                                                          width: 31.h)
                                                    ])
                                              ])
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 24.v),
                                        child: Text("Shipping Details",
                                            style: theme.textTheme.titleSmall)),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 11.v),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 19.v),
                                        decoration: AppDecoration.outlineBlue
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: Text(
                                                            "Date Shipping",
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimary_1)),
                                                    Text("January 16, 2020",
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimary)
                                                  ]),
                                              SizedBox(height: 15.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: Text("Shipping",
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimary_1)),
                                                    Text("POS Reggular",
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimary)
                                                  ]),
                                              SizedBox(height: 14.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: Text("No. Resi",
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimary_1)),
                                                    Text("000192848573",
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimary)
                                                  ]),
                                              SizedBox(height: 15.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        22.v),
                                                            child: Text(
                                                                "Address",
                                                                style: CustomTextStyles
                                                                    .bodySmallOnPrimary_1))),
                                                    Container(
                                                        width: 160.h,
                                                        margin: EdgeInsets.only(
                                                            left: 98.h),
                                                        child: Text(
                                                            "2727 New  Owerri, Owerri, Imo State 78410",
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimary
                                                                .copyWith(
                                                                    height:
                                                                        1.80)))
                                                  ])
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 46.v),
                                        child: Text("Payment Details",
                                            style: theme.textTheme.titleSmall)),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 1.h, top: 11.v),
                                        padding: EdgeInsets.all(16.h),
                                        decoration: AppDecoration.outlineBlue
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("Items (3)",
                                                        style: theme.textTheme
                                                            .bodySmall),
                                                    Text("598.86",
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimary)
                                                  ]),
                                              SizedBox(height: 16.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 1.v),
                                                        child: Text("Shipping",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Text("40.00",
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimary)
                                                  ]),
                                              SizedBox(height: 14.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 1.v),
                                                        child: Text(
                                                            "Import charges",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Text("128.00",
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimary)
                                                  ]),
                                              SizedBox(height: 12.v),
                                              Divider(),
                                              SizedBox(height: 10.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("Total Price",
                                                        style: theme.textTheme
                                                            .labelLarge),
                                                    Text("766.86",
                                                        style: CustomTextStyles
                                                            .labelLargePrimary)
                                                  ])
                                            ]))
                                  ]))))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "Notify Me",
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
}

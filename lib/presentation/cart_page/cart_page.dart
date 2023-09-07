import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_title.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_ex_todo2/widgets/custom_elevated_button.dart';
import 'package:flutter_ex_todo2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  TextEditingController cuponCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                title: AppbarTitle(
                    text: "Your Cart", margin: EdgeInsets.only(left: 16.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgNotificationicon,
                      margin: EdgeInsets.fromLTRB(13.h, 15.v, 13.h, 16.v),
                      onTap: () {
                        onTapNotificationico(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v),
                child: Column(children: [
                  GestureDetector(
                      onTap: () {
                        onTapProductdetails(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 1.h),
                          padding: EdgeInsets.symmetric(vertical: 15.v),
                          decoration: AppDecoration.outlineBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImageproduct,
                                    height: 72.adaptSize,
                                    width: 72.adaptSize,
                                    radius: BorderRadius.circular(5.h),
                                    margin:
                                        EdgeInsets.symmetric(vertical: 1.v)),
                                Column(children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: 150.h,
                                            child: Text(
                                                "Nike Air Zoom Pegasus 36 Miami",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.labelLarge!
                                                    .copyWith(height: 1.50))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgLoveicon,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 20.h, bottom: 10.v)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgTrashicon,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 8.h, bottom: 10.v))
                                      ]),
                                  SizedBox(height: 17.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("299,43",
                                            style: CustomTextStyles
                                                .labelLargePrimary),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgFolder,
                                            height: 20.v,
                                            width: 33.h,
                                            margin:
                                                EdgeInsets.only(left: 67.h)),
                                        SizedBox(
                                            height: 20.v,
                                            width: 41.h,
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: 20.v,
                                                          width: 41.h,
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .blue50,
                                                              border: Border.all(
                                                                  color: appTheme
                                                                      .blue50,
                                                                  width: 1.h,
                                                                  strokeAlign:
                                                                      strokeAlignCenter)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Opacity(
                                                          opacity: 0.5,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          17.h),
                                                              child: Text("1",
                                                                  style: CustomTextStyles
                                                                      .bodySmallOnPrimary_2))))
                                                ])),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgPlus,
                                            height: 20.v,
                                            width: 33.h)
                                      ])
                                ])
                              ]))),
                  Container(
                      margin: EdgeInsets.only(top: 16.v, right: 1.h),
                      padding: EdgeInsets.symmetric(vertical: 15.v),
                      decoration: AppDecoration.outlineBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImageproduct,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                                radius: BorderRadius.circular(5.h),
                                margin: EdgeInsets.symmetric(vertical: 1.v)),
                            Column(children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: 150.h,
                                        child: Text(
                                            "Nike Air Zoom Pegasus 36 Miami",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.labelLarge!
                                                .copyWith(height: 1.50))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLoveicon,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 20.h, bottom: 10.v)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgTrashicon,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 8.h, bottom: 10.v))
                                  ]),
                              SizedBox(height: 17.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("299,43",
                                        style:
                                            CustomTextStyles.labelLargePrimary),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFolder,
                                        height: 20.v,
                                        width: 33.h,
                                        margin: EdgeInsets.only(left: 67.h)),
                                    SizedBox(
                                        height: 20.v,
                                        width: 41.h,
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 20.v,
                                                      width: 41.h,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              appTheme.blue50,
                                                          border: Border.all(
                                                              color: appTheme
                                                                  .blue50,
                                                              width: 1.h,
                                                              strokeAlign:
                                                                  strokeAlignCenter)))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Opacity(
                                                      opacity: 0.5,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 17.h),
                                                          child: Text("1",
                                                              style: CustomTextStyles
                                                                  .bodySmallOnPrimary_2))))
                                            ])),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgPlus,
                                        height: 20.v,
                                        width: 33.h)
                                  ])
                            ])
                          ])),
                  SizedBox(height: 52.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Expanded(
                        child: CustomTextFormField(
                            controller: cuponCodeController,
                            hintText: "Enter Cupon Code",
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 19.v))),
                    CustomElevatedButton(
                        width: 87.h,
                        text: "Apply",
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle:
                            CustomTextStyles.labelLargeOnPrimaryContainer)
                  ]),
                  Container(
                      margin: EdgeInsets.only(top: 16.v, right: 1.h),
                      padding: EdgeInsets.all(16.h),
                      decoration: AppDecoration.outlineBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Items (3)",
                                      style: theme.textTheme.bodySmall),
                                  Text("598.86",
                                      style:
                                          CustomTextStyles.bodySmallOnPrimary)
                                ]),
                            SizedBox(height: 16.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("Shipping",
                                          style: theme.textTheme.bodySmall)),
                                  Text("40.00",
                                      style:
                                          CustomTextStyles.bodySmallOnPrimary)
                                ]),
                            SizedBox(height: 14.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("Import charges",
                                          style: theme.textTheme.bodySmall)),
                                  Text("128.00",
                                      style:
                                          CustomTextStyles.bodySmallOnPrimary)
                                ]),
                            SizedBox(height: 12.v),
                            Divider(),
                            SizedBox(height: 10.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total Price",
                                      style: theme.textTheme.labelLarge),
                                  Text("766.86",
                                      style: CustomTextStyles.labelLargePrimary)
                                ])
                          ])),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                      text: "Check Out",
                      onTap: () {
                        onTapCheckout(context);
                      }),
                  SizedBox(height: 8.v)
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

  /// Navigates to the productDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the productDetailScreen.
  onTapProductdetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
  }

  /// Navigates to the shipToScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the shipToScreen.
  onTapCheckout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shipToScreen);
  }
}

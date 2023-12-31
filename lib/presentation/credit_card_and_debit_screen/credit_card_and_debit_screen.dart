import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_ex_todo2/widgets/custom_elevated_button.dart';

class CreditCardAndDebitScreen extends StatelessWidget {
  const CreditCardAndDebitScreen({Key? key}) : super(key: key);

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
                    text: "Credit Card And Debit",
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
                child: Column(children: [
                  GestureDetector(
                      onTap: () {
                        onTapCreditcard(context);
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 21.h, vertical: 24.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: 22.v,
                                    width: 36.h,
                                    margin: EdgeInsets.only(left: 3.h)),
                                SizedBox(height: 30.v),
                                Text("6326    9124    8124    9875",
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 17.v),
                                Row(children: [
                                  Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("CARD HOLDER",
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimaryContainer10))),
                                  Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 37.h),
                                          child: Text("CARD SAVE",
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimaryContainer10)))
                                ]),
                                SizedBox(height: 1.v),
                                Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("Dominic Ovo",
                                          style: CustomTextStyles
                                              .labelMediumOnPrimaryContainer)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 41.h),
                                      child: Text("06/24",
                                          style: CustomTextStyles
                                              .labelMediumOnPrimaryContainer))
                                ])
                              ]))),
                  SizedBox(height: 14.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 21.h, vertical: 24.v),
                      decoration: AppDecoration.fillIndigoA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgVolume,
                                height: 22.v,
                                width: 36.h,
                                margin: EdgeInsets.only(left: 3.h)),
                            SizedBox(height: 30.v),
                            Text("6326    9124    8124    9875",
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 17.v),
                            Row(children: [
                              Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 2.v),
                                      child: Text("CARD HOLDER",
                                          style: CustomTextStyles
                                              .bodySmallOnPrimaryContainer10))),
                              Opacity(
                                  opacity: 0.5,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 37.h),
                                      child: Text("CARD SAVE",
                                          style: CustomTextStyles
                                              .bodySmallOnPrimaryContainer10)))
                            ]),
                            SizedBox(height: 1.v),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("Dominic Ovo",
                                      style: CustomTextStyles
                                          .labelMediumOnPrimaryContainer)),
                              Padding(
                                  padding: EdgeInsets.only(left: 41.h),
                                  child: Text("06/24",
                                      style: CustomTextStyles
                                          .labelMediumOnPrimaryContainer))
                            ])
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "Add Card",
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapAddcard(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the addCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the addCardScreen.
  onTapAddcard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addCardScreen);
  }

  /// Navigates to the lailyfaFebrinaCardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the lailyfaFebrinaCardScreen.
  onTapCreditcard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lailyfaFebrinaCardScreen);
  }
}

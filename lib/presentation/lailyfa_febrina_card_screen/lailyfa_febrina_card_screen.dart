import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_ex_todo2/widgets/custom_elevated_button.dart';
import 'package:flutter_ex_todo2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LailyfaFebrinaCardScreen extends StatelessWidget {
  LailyfaFebrinaCardScreen({Key? key}) : super(key: key);

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  TextEditingController securityCodeController = TextEditingController();

  TextEditingController cardholdernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 14.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "Lailyfa Febrina Card",
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(children: [
                  SizedBox(height: 19.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21.h, vertical: 23.v),
                                        decoration: AppDecoration.fillPrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVolume,
                                                  height: 22.v,
                                                  width: 36.h,
                                                  margin: EdgeInsets.only(
                                                      left: 3.h)),
                                              SizedBox(height: 30.v),
                                              Text(
                                                  "6326    9124    8124    9875",
                                                  style: theme
                                                      .textTheme.headlineSmall),
                                              SizedBox(height: 17.v),
                                              Row(children: [
                                                Opacity(
                                                    opacity: 0.5,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 2.v),
                                                        child: Text(
                                                            "CARD HOLDER",
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimaryContainer10))),
                                                Opacity(
                                                    opacity: 0.5,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 37.h),
                                                        child: Text("CARD SAVE",
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimaryContainer10)))
                                              ]),
                                              SizedBox(height: 1.v),
                                              Row(children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 3.v),
                                                    child: Text(
                                                        "Lailyfa Febrina",
                                                        style: CustomTextStyles
                                                            .labelMediumOnPrimaryContainer)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 32.h,
                                                        bottom: 3.v),
                                                    child: Text("06/24",
                                                        style: CustomTextStyles
                                                            .labelMediumOnPrimaryContainer))
                                              ])
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 23.v),
                                        child: Text("Card Number",
                                            style: theme.textTheme.titleSmall)),
                                    CustomTextFormField(
                                        controller: cardNumberController,
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 12.v),
                                        hintText: "1231 - 2312 - 3123 - 1231",
                                        hintStyle: CustomTextStyles
                                            .labelLargeBluegray300SemiBold,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 15.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 24.v),
                                        child: Text("Expiration Date",
                                            style: theme.textTheme.titleSmall)),
                                    CustomTextFormField(
                                        controller: expirationDateController,
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 11.v),
                                        hintText: "12/12",
                                        hintStyle: CustomTextStyles
                                            .labelLargeBluegray300SemiBold,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 15.v)),
                                    SizedBox(height: 29.v),
                                    Text("Security Code",
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 11.v),
                                    CustomTextFormField(
                                        controller: securityCodeController,
                                        hintText: "1219",
                                        hintStyle: CustomTextStyles
                                            .labelLargeBluegray300SemiBold,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 15.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 23.v),
                                        child: Text("Card Holder",
                                            style: theme.textTheme.titleSmall)),
                                    CustomTextFormField(
                                        controller: cardholdernameController,
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 12.v),
                                        hintText: "Lailyfa Febrina",
                                        hintStyle: CustomTextStyles
                                            .labelLargeBluegray300SemiBold,
                                        textInputAction: TextInputAction.done,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 15.v))
                                  ]))))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "Save",
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapSave(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the creditCardAndDebitScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the creditCardAndDebitScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen);
  }
}

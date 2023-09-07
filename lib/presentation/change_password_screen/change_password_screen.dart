import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_ex_todo2/widgets/custom_elevated_button.dart';
import 'package:flutter_ex_todo2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "Change Password",
                    margin: EdgeInsets.only(left: 12.h))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Old Password",
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 12.v),
                          CustomTextFormField(
                              controller: passwordController,
                              hintText: "•••••••••••••••••",
                              hintStyle: CustomTextStyles.labelLargeBluegray300,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              obscureText: true,
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 23.v),
                          Text("New Password",
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 12.v),
                          CustomTextFormField(
                              controller: newpasswordController,
                              hintText: "•••••••••••••••••",
                              hintStyle: CustomTextStyles.labelLargeBluegray300,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              obscureText: true,
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 24.v),
                          Text("New Password Again",
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 11.v),
                          CustomTextFormField(
                              controller: newpasswordController1,
                              hintText: "•••••••••••••••••",
                              hintStyle: CustomTextStyles.labelLargeBluegray300,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              obscureText: true,
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 5.v)
                        ]))),
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

  onTapSave(BuildContext context) {
    // TODO: implement Actions
  }
}

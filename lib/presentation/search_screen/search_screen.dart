import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image_1.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_searchview_1.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_ex_todo2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarSearchview1(
                    margin: EdgeInsets.only(left: 16.h),
                    hintText: "Nike Air Max",
                    controller: searchController),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMicicon,
                      margin: EdgeInsets.all(16.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(children: [
                  Divider(indent: 6.h),
                  SizedBox(height: 9.v),
                  CustomElevatedButton(
                      height: 54.v,
                      text: "Nike Air Max 270 React ENG ",
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.bodySmall!,
                      onTap: () {
                        onTapNikeairmax(context);
                      }),
                  GestureDetector(
                      onTap: () {
                        onTapTxtSearchresult(context);
                      },
                      child: Text("Nike Air Vapormax 360",
                          style: theme.textTheme.bodySmall)),
                  Text("Nike Air Max 270 React ENG ",
                      style: theme.textTheme.bodySmall),
                  Text("Nike Air Max 270 React",
                      style: theme.textTheme.bodySmall),
                  Text("Nike Air VaporMax Flyknit 3",
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 5.v),
                  Text("Nike Air Max 97 Utility",
                      style: theme.textTheme.bodySmall)
                ]))));
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchResultScreen.
  onTapNikeairmax(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchResultScreen.
  onTapTxtSearchresult(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/custom_app_bar.dart';

class SortByScreen extends StatelessWidget {
  const SortByScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "Sort By", margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  Text("Best Match", style: CustomTextStyles.labelLargePrimary),
                  GestureDetector(
                      onTap: () {
                        onTapTxtTimeendingsoone(context);
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 17.v),
                          decoration: AppDecoration.fillBlue,
                          child: Text("Time: ending soonest",
                              style: theme.textTheme.labelLarge))),
                  Text("Time: newly listed", style: theme.textTheme.labelLarge),
                  Text("Price + Shipping: lowest first",
                      style: theme.textTheme.labelLarge),
                  Text("Price + Shipping: highest first",
                      style: theme.textTheme.labelLarge),
                  SizedBox(height: 5.v),
                  Text("Distance: nearest first",
                      style: theme.textTheme.labelLarge)
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the offerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the offerScreen.
  onTapTxtTimeendingsoone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.offerScreen);
  }
}

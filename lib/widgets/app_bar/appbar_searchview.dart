import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 263.h,
        controller: controller,
        hintText: "Search Product",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(16.h, 15.v, 8.h, 15.v),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 46.v,
        ),
        suffix: Padding(
          padding: EdgeInsets.only(
            right: 15.h,
          ),
          child: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: Icon(
              Icons.clear,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}

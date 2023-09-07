import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';

// ignore: must_be_immutable
class SizesItemWidget extends StatelessWidget {
  const SizesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.outlineBlue.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder24,
          ),
          child: Text(
            "6",
            style: theme.textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}

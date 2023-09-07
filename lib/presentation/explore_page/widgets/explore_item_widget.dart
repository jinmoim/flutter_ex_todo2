import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  const ExploreItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 70.adaptSize,
          width: 70.adaptSize,
          padding: EdgeInsets.all(23.h),
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowleftPrimary,
          ),
        ),
        SizedBox(height: 7.v),
        Text(
          "Man Shirt",
          style: CustomTextStyles.bodySmall10,
        ),
      ],
    );
  }
}

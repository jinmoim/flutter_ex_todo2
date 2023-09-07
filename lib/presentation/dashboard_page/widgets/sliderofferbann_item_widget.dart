import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';

// ignore: must_be_immutable
class SliderofferbannItemWidget extends StatelessWidget {
  const SliderofferbannItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPromotionimage,
            height: 206.v,
            width: 343.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Super Flash Sale\n50% Off",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "08",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          ":",
                          style: CustomTextStyles.titleSmallOnPrimaryContainer,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 8.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "34",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 10.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          ":",
                          style: CustomTextStyles.titleSmallOnPrimaryContainer,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 8.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "52",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

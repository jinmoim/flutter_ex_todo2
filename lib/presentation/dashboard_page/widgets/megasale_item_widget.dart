import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';

// ignore: must_be_immutable
class MegasaleItemWidget extends StatelessWidget {
  MegasaleItemWidget({
    Key? key,
    this.onTapProduct,
  }) : super(
          key: key,
        );

  VoidCallback? onTapProduct;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 141.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapProduct?.call();
          },
          child: Container(
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.outlineBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProductimage2,
                  height: 109.adaptSize,
                  width: 109.adaptSize,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  "MS - Nike Air Max 270 React...",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
                SizedBox(height: 11.v),
                Text(
                  "299,43",
                  style: CustomTextStyles.labelLargePrimary,
                ),
                SizedBox(height: 9.v),
                Row(
                  children: [
                    Text(
                      "534,33",
                      style: CustomTextStyles.bodySmall10.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "24% Off",
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

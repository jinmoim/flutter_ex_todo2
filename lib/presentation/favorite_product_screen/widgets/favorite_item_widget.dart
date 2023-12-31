import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class FavoriteItemWidget extends StatelessWidget {
  FavoriteItemWidget({
    Key? key,
    this.onTapProduct,
  }) : super(
          key: key,
        );

  VoidCallback? onTapProduct;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
              height: 133.adaptSize,
              width: 133.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              "Nike Air Max 270 React ENG",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge!.copyWith(
                height: 1.50,
              ),
            ),
            SizedBox(height: 5.v),
            CustomRatingBar(
              ignoreGestures: true,
              initialRating: 4,
            ),
            SizedBox(height: 18.v),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "299,43",
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                    SizedBox(height: 5.v),
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
                CustomImageView(
                  svgPath: ImageConstant.imgTrashicon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    left: 17.h,
                    top: 14.v,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

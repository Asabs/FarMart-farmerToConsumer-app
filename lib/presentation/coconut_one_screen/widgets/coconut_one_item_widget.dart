import '../models/coconut_one_item_model.dart';
import 'package:farmmart/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoconutOneItemWidget extends StatelessWidget {
  CoconutOneItemWidget(
    this.coconutOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CoconutOneItemModel coconutOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 10,
          top: 34,
          right: 10,
          bottom: 34,
        ),
        decoration: AppDecoration.fill2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImages216,
              height: getVerticalSize(
                134,
              ),
              width: getHorizontalSize(
                170,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  30,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 33,
                top: 21,
                bottom: 22,
              ),
              child: Text(
                "msg_farmer_asabere_greater".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

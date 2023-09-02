import '../models/items_item_model.dart';
import 'package:farmmart/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemsItemWidget extends StatelessWidget {
  ItemsItemWidget(
    this.itemsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ItemsItemModel itemsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outline6.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getSize(
                104,
              ),
              width: getSize(
                104,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage104x104,
                    height: getSize(
                      104,
                    ),
                    width: getSize(
                      104,
                    ),
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          8,
                        ),
                      ),
                      bottomLeft: Radius.circular(
                        getHorizontalSize(
                          8,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage1,
                    height: getSize(
                      104,
                    ),
                    width: getSize(
                      104,
                    ),
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          8,
                        ),
                      ),
                      bottomLeft: Radius.circular(
                        getHorizontalSize(
                          8,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 11,
                top: 10,
                bottom: 17,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_pullover".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "lbl_mango".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_color".tr,
                                style: CustomTextStyles.bodySmallGray50011,
                              ),
                              TextSpan(
                                text: " ",
                                style: CustomTextStyles.bodySmallGray50011,
                              ),
                              TextSpan(
                                text: "lbl_gray".tr,
                                style: CustomTextStyles.bodySmallGray900,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_size".tr,
                                  style: CustomTextStyles.bodySmallGray50011,
                                ),
                                TextSpan(
                                  text: " ",
                                  style: CustomTextStyles.bodySmallGray50011,
                                ),
                                TextSpan(
                                  text: "lbl_l".tr,
                                  style: CustomTextStyles.bodySmallGray900,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_units".tr,
                                  style: CustomTextStyles.bodySmallGray50011,
                                ),
                                TextSpan(
                                  text: " ",
                                  style: CustomTextStyles.bodySmallGray50011,
                                ),
                                TextSpan(
                                  text: "lbl_1".tr,
                                  style: CustomTextStyles.bodySmallGray900,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          "lbl_51".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

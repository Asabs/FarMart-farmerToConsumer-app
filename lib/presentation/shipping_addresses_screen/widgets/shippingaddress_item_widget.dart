import '../models/shippingaddress_item_model.dart';
import 'package:farmmart/core/app_export.dart';
import 'package:farmmart/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShippingaddressItemWidget extends StatelessWidget {
  ShippingaddressItemWidget(
    this.shippingaddressItemModelObj, {
    Key? key,
    this.changeCheckBox,
  }) : super(
          key: key,
        );

  ShippingaddressItemModel shippingaddressItemModelObj;

  Function(bool)? changeCheckBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 23,
        top: 19,
        right: 23,
        bottom: 19,
      ),
      decoration: AppDecoration.outline6.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  shippingaddressItemModelObj.nameTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_edit".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 5,
              top: 11,
              right: 57,
            ),
            child: Text(
              "msg_3_newbridge_court2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodyMediumMetropolisGray900,
            ),
          ),
          CustomCheckboxButton(
            text: "msg_use_as_the_shipping".tr,
            iconSize: getHorizontalSize(
              20,
            ),
            value: shippingaddressItemModelObj.isCheckbox,
            margin: getMargin(
              left: 5,
              top: 24,
              right: 74,
            ),
            padding: getPadding(
              top: 3,
              bottom: 3,
            ),
            textStyle: CustomTextStyles.bodyMediumMetropolisGray900,
            onChange: (value) {
              changeCheckBox?.call(value);
            },
          ),
        ],
      ),
    );
  }
}

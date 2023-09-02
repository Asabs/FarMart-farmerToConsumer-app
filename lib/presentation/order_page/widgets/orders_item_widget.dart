import '../models/orders_item_model.dart';
import 'package:farmmart/core/app_export.dart';
import 'package:farmmart/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrdersItemWidget extends StatelessWidget {
  OrdersItemWidget(
    this.ordersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrdersItemModel ordersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 18,
        right: 15,
        bottom: 18,
      ),
      decoration: AppDecoration.outline2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 4,
              right: 3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_order_1947034".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleMedium,
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "lbl_05_12_2019".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodyMediumMetropolisGray500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 3,
              top: 17,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "msg_tracking_number".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodyMediumMetropolisGray500,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_iw3475453455".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 4,
              top: 7,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "lbl_quantity".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodyMediumMetropolisGray500,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 11,
                  ),
                  child: Text(
                    "lbl_3".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "lbl_total_amount".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodyMediumMetropolisGray500,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 11,
                  ),
                  child: Text(
                    "lbl_112".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 4,
              top: 17,
              right: 4,
              bottom: 1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomOutlinedButton(
                  text: "lbl_details".tr,
                  buttonStyle: CustomButtonStyles.outlineGray900.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(Size(
                    getHorizontalSize(
                      98,
                    ),
                    getVerticalSize(
                      36,
                    ),
                  ))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                    bottom: 11,
                  ),
                  child: Text(
                    "lbl_delivered".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleSmallGreen600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

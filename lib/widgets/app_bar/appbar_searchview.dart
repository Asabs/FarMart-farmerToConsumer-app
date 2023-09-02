import 'package:farmmart/core/app_export.dart';
import 'package:farmmart/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

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
        width: getHorizontalSize(
          329,
        ),
        controller: controller,
        hintText: "lbl_search".tr,
        hintStyle: CustomTextStyles.bodyLargeBluegray200,
        textStyle: CustomTextStyles.bodyLargeBluegray200,
        prefix: Container(
          margin: getMargin(
            left: 13,
            top: 10,
            right: 10,
            bottom: 10,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            45,
          ),
        ),
        suffix: Padding(
          padding: EdgeInsets.only(
            right: getHorizontalSize(
              15,
            ),
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
        filled: true,
        fillColor: appTheme.blueGray50,
        contentPadding: getPadding(
          top: 12,
          right: 30,
          bottom: 12,
        ),
      ),
    );
  }
}

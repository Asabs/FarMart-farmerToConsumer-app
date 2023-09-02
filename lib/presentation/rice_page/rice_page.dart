import '../rice_page/widgets/rice_item_widget.dart';
import 'bloc/rice_bloc.dart';
import 'models/rice_item_model.dart';
import 'models/rice_model.dart';
import 'package:farmmart/core/app_export.dart';
import 'package:farmmart/widgets/app_bar/appbar_image.dart';
import 'package:farmmart/widgets/app_bar/appbar_searchview.dart';
import 'package:farmmart/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:farmmart/widgets/app_bar/appbar_title.dart';
import 'package:farmmart/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RicePage extends StatelessWidget {
  const RicePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RiceBloc>(
      create: (context) => RiceBloc(RiceState(
        riceModelObj: RiceModel(),
      ))
        ..add(RiceInitialEvent()),
      child: RicePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fill,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  148,
                ),
                width: getHorizontalSize(
                  344,
                ),
                margin: getMargin(
                  left: 15,
                  top: 15,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: getVerticalSize(
                          69,
                        ),
                        width: getHorizontalSize(
                          67,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              34,
                            ),
                          ),
                          border: Border.all(
                            color: appTheme.lime900,
                            width: getHorizontalSize(
                              14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomAppBar(
                      height: getVerticalSize(
                        89,
                      ),
                      centerTitle: true,
                      title: SizedBox(
                        height: getVerticalSize(
                          89.5,
                        ),
                        width: getHorizontalSize(
                          329,
                        ),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            BlocSelector<RiceBloc, RiceState,
                                TextEditingController?>(
                              selector: (state) => state.searchController,
                              builder: (context, searchController) {
                                return AppbarSearchview(
                                  margin: getMargin(
                                    top: 44,
                                  ),
                                  hintText: "lbl_search".tr,
                                  controller: searchController,
                                );
                              },
                            ),
                            AppbarTitle(
                              text: "msg_good_evening_kofi".tr,
                              margin: getMargin(
                                left: 73,
                                right: 83,
                                bottom: 65,
                              ),
                            ),
                            AppbarSubtitle1(
                              text: "msg_32_kingston_ln".tr,
                              margin: getMargin(
                                left: 41,
                                top: 24,
                                right: 159,
                                bottom: 44,
                              ),
                            ),
                            AppbarImage(
                              height: getSize(
                                20,
                              ),
                              width: getSize(
                                20,
                              ),
                              svgPath: ImageConstant.imgClock,
                              margin: getMargin(
                                left: 179,
                                top: 23,
                                right: 130,
                                bottom: 46,
                              ),
                            ),
                            AppbarSubtitle1(
                              text: "lbl_order_now".tr,
                              margin: getMargin(
                                left: 203,
                                top: 24,
                                right: 40,
                                bottom: 46,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: getVerticalSize(
                    861,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: getPadding(
                            top: 194,
                            right: 11,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "lbl_farmer_asabere".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 15,
                                ),
                                child: Text(
                                  "msg_greater_accra_awoshie".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            top: 11,
                          ),
                          child: BlocSelector<RiceBloc, RiceState, RiceModel?>(
                            selector: (state) => state.riceModelObj,
                            builder: (context, riceModelObj) {
                              return ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      14,
                                    ),
                                  );
                                },
                                itemCount:
                                    riceModelObj?.riceItemList.length ?? 0,
                                itemBuilder: (context, index) {
                                  RiceItemModel model =
                                      riceModelObj?.riceItemList[index] ??
                                          RiceItemModel();
                                  return RiceItemWidget(
                                    model,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

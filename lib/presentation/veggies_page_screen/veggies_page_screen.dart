import 'bloc/veggies_page_bloc.dart';
import 'models/veggies_page_model.dart';
import 'package:farmmart/core/app_export.dart';
import 'package:farmmart/presentation/homepage_page/homepage_page.dart';
import 'package:farmmart/presentation/order_details_page/order_details_page.dart';
import 'package:farmmart/presentation/rice_page/rice_page.dart';
import 'package:farmmart/widgets/app_bar/appbar_image.dart';
import 'package:farmmart/widgets/app_bar/appbar_searchview.dart';
import 'package:farmmart/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:farmmart/widgets/app_bar/appbar_title.dart';
import 'package:farmmart/widgets/app_bar/custom_app_bar.dart';
import 'package:farmmart/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class VeggiesPageScreen extends StatelessWidget {
  VeggiesPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<VeggiesPageBloc>(
      create: (context) => VeggiesPageBloc(VeggiesPageState(
        veggiesPageModelObj: VeggiesPageModel(),
      ))
        ..add(VeggiesPageInitialEvent()),
      child: VeggiesPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
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
                            BlocSelector<VeggiesPageBloc, VeggiesPageState,
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
                child: SingleChildScrollView(
                  padding: getPadding(
                    top: 9,
                  ),
                  child: Padding(
                    padding: getPadding(
                      left: 13,
                      right: 16,
                      bottom: 2,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_vegetables".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: getVerticalSize(
                                154,
                              ),
                              width: getHorizontalSize(
                                152,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle6,
                                    height: getVerticalSize(
                                      154,
                                    ),
                                    width: getHorizontalSize(
                                      152,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        30,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgYam1,
                                    height: getVerticalSize(
                                      154,
                                    ),
                                    width: getHorizontalSize(
                                      152,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        30,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getVerticalSize(
                                154,
                              ),
                              width: getHorizontalSize(
                                152,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle6,
                                    height: getVerticalSize(
                                      154,
                                    ),
                                    width: getHorizontalSize(
                                      152,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        30,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCocoyam1,
                                    height: getVerticalSize(
                                      154,
                                    ),
                                    width: getHorizontalSize(
                                      152,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        30,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              left: 58,
                              top: 1,
                              right: 39,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_yam".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Text(
                                    "lbl_cocoyam".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: getVerticalSize(
                                  150,
                                ),
                                width: getHorizontalSize(
                                  152,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle6,
                                      height: getVerticalSize(
                                        150,
                                      ),
                                      width: getHorizontalSize(
                                        152,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSweetpotatoes1,
                                      height: getVerticalSize(
                                        150,
                                      ),
                                      width: getHorizontalSize(
                                        152,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: getVerticalSize(
                                  150,
                                ),
                                width: getHorizontalSize(
                                  152,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle6,
                                      height: getVerticalSize(
                                        150,
                                      ),
                                      width: getHorizontalSize(
                                        152,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPotato1,
                                      height: getVerticalSize(
                                        150,
                                      ),
                                      width: getHorizontalSize(
                                        152,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 3,
                            right: 48,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_sweet_potato".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge,
                              ),
                              Text(
                                "lbl_potato".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 19,
                            right: 4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: getVerticalSize(
                                  154,
                                ),
                                width: getHorizontalSize(
                                  152,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle6,
                                      height: getVerticalSize(
                                        154,
                                      ),
                                      width: getHorizontalSize(
                                        152,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCassava1,
                                      height: getVerticalSize(
                                        154,
                                      ),
                                      width: getHorizontalSize(
                                        152,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle6,
                                height: getVerticalSize(
                                  154,
                                ),
                                width: getHorizontalSize(
                                  152,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 42,
                              top: 1,
                              right: 50,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "lbl_cassava".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Text(
                                  "lbl_cereal".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle6,
                                height: getVerticalSize(
                                  150,
                                ),
                                width: getHorizontalSize(
                                  152,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    30,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle6,
                                height: getVerticalSize(
                                  150,
                                ),
                                width: getHorizontalSize(
                                  152,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 3,
                            right: 48,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_sweet_potato".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge,
                              ),
                              Text(
                                "lbl_potato".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 19,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: getVerticalSize(
                                  154,
                                ),
                                width: getHorizontalSize(
                                  152,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle6,
                                      height: getVerticalSize(
                                        154,
                                      ),
                                      width: getHorizontalSize(
                                        152,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCassava1,
                                      height: getVerticalSize(
                                        154,
                                      ),
                                      width: getHorizontalSize(
                                        152,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          30,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle6,
                                height: getVerticalSize(
                                  154,
                                ),
                                width: getHorizontalSize(
                                  152,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 42,
                              top: 1,
                              right: 50,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "lbl_cassava".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Text(
                                  "lbl_cereal".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle6,
                                height: getVerticalSize(
                                  150,
                                ),
                                width: getHorizontalSize(
                                  152,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    30,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle6,
                                height: getVerticalSize(
                                  150,
                                ),
                                width: getHorizontalSize(
                                  152,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 18,
                            top: 3,
                            right: 48,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_sweet_potato".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge,
                              ),
                              Text(
                                "lbl_potato".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Shop:
        return AppRoutes.ricePage;
      case BottomBarEnum.Favorites:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.orderDetailsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage.builder(context);
      case AppRoutes.ricePage:
        return RicePage.builder(context);
      case AppRoutes.orderDetailsPage:
        return OrderDetailsPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}

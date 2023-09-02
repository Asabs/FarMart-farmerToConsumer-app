import 'bloc/fruits_page_bloc.dart';import 'models/fruits_page_model.dart';import 'package:farmmart/core/app_export.dart';import 'package:farmmart/presentation/homepage_page/homepage_page.dart';import 'package:farmmart/presentation/order_details_page/order_details_page.dart';import 'package:farmmart/presentation/rice_page/rice_page.dart';import 'package:farmmart/widgets/app_bar/appbar_title.dart';import 'package:farmmart/widgets/app_bar/custom_app_bar.dart';import 'package:farmmart/widgets/custom_bottom_bar.dart';import 'package:farmmart/widgets/custom_search_view.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class FruitsPageScreen extends StatelessWidget {FruitsPageScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<FruitsPageBloc>(create: (context) => FruitsPageBloc(FruitsPageState(fruitsPageModelObj: FruitsPageModel()))..add(FruitsPageInitialEvent()), child: FruitsPageScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(148), width: getHorizontalSize(344), margin: getMargin(left: 15, top: 15), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.bottomCenter, child: BlocSelector<FruitsPageBloc, FruitsPageState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(width: getHorizontalSize(329), controller: searchController, hintText: "lbl_search".tr, hintStyle: CustomTextStyles.bodyLargeBluegray200, textStyle: CustomTextStyles.bodyLargeBluegray200, alignment: Alignment.bottomCenter, prefix: Container(margin: getMargin(left: 13, top: 10, right: 10, bottom: 10), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(45)), suffix: Padding(padding: EdgeInsets.only(right: getHorizontalSize(15)), child: IconButton(onPressed: () {searchController!.clear();}, icon: Icon(Icons.clear, color: Colors.grey.shade600))), filled: true, fillColor: appTheme.blueGray50, contentPadding: getPadding(top: 12, right: 30, bottom: 12));})), Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(left: 56, bottom: 44), child: Text("msg_32_kingston_ln".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargeDeeporange300))), CustomImageView(svgPath: ImageConstant.imgClock, height: getSize(20), width: getSize(20), alignment: Alignment.bottomRight, margin: getMargin(right: 130, bottom: 46)), Align(alignment: Alignment.bottomRight, child: Padding(padding: getPadding(right: 40, bottom: 45), child: Text("lbl_order_now".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargeDeeporange300))), CustomAppBar(height: getVerticalSize(83), title: Padding(padding: getPadding(left: 15), child: Row(children: [Container(height: getVerticalSize(69), width: getHorizontalSize(67), margin: getMargin(bottom: 13), decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(1), borderRadius: BorderRadius.circular(getHorizontalSize(34)), border: Border.all(color: appTheme.lime900, width: getHorizontalSize(14)))), AppbarTitle(text: "msg_good_evening_kofi".tr, margin: getMargin(left: 21, top: 58))])))])), Container(padding: getPadding(left: 13, top: 6, right: 13, bottom: 6), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_fruits".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.headlineLarge), Padding(padding: getPadding(top: 3, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: getVerticalSize(154), width: getHorizontalSize(152), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {onTapImgRectanglesix(context);}), CustomImageView(imagePath: ImageConstant.imgOranges1, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center)])), SizedBox(height: getVerticalSize(154), width: getHorizontalSize(152), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {onTapImgRectanglethirte(context);}), CustomImageView(imagePath: ImageConstant.imgMango1, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center)]))])), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 41, top: 3, right: 56), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_oranges".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge), Text("lbl_mango".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)]))), Padding(padding: getPadding(top: 19, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: getVerticalSize(150), width: getHorizontalSize(152), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(150), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {onTapImgRectanglefiftee(context);}), CustomImageView(imagePath: ImageConstant.imgPineapple21, height: getVerticalSize(150), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center)])), SizedBox(height: getVerticalSize(150), width: getHorizontalSize(152), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(150), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {onTapImgRectanglefourte(context);}), CustomImageView(imagePath: ImageConstant.imgBanana1, height: getVerticalSize(150), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center)]))])), Padding(padding: getPadding(left: 36, top: 3, right: 45), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 1), child: Text("lbl_pineapple".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), Padding(padding: getPadding(bottom: 1), child: Text("lbl_banana".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge))])), Padding(padding: getPadding(top: 18, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: getVerticalSize(154), width: getHorizontalSize(152), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {onTapImgRectanglesixtee(context);}), CustomImageView(imagePath: ImageConstant.imgCoconut1, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center)])), SizedBox(height: getVerticalSize(154), width: getHorizontalSize(152), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {onTapImgRectanglesevent(context);}), CustomImageView(imagePath: ImageConstant.imgPawpaw1, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center)]))])), Padding(padding: getPadding(left: 42, top: 1, right: 36, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(bottom: 1), child: Text("lbl_coconut".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), Padding(padding: getPadding(top: 1), child: Text("lbl_pawpaw".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge))]))]))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homepagePage; case BottomBarEnum.Shop: return AppRoutes.ricePage; case BottomBarEnum.Favorites: return "/"; case BottomBarEnum.Profile: return AppRoutes.orderDetailsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homepagePage: return HomepagePage.builder(context); case AppRoutes.ricePage: return RicePage.builder(context); case AppRoutes.orderDetailsPage: return OrderDetailsPage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the orangesScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the orangesScreen.
onTapImgRectanglesix(BuildContext context) { NavigatorService.pushNamed(AppRoutes.orangesScreen, ); } 
/// Navigates to the mangoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the mangoScreen.
onTapImgRectanglethirte(BuildContext context) { NavigatorService.pushNamed(AppRoutes.mangoScreen, ); } 
/// Navigates to the pineappleOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the pineappleOneScreen.
onTapImgRectanglefiftee(BuildContext context) { NavigatorService.pushNamed(AppRoutes.pineappleOneScreen, ); } 
/// Navigates to the bananaOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the bananaOneScreen.
onTapImgRectanglefourte(BuildContext context) { NavigatorService.pushNamed(AppRoutes.bananaOneScreen, ); } 
/// Navigates to the coconutScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the coconutScreen.
onTapImgRectanglesixtee(BuildContext context) { NavigatorService.pushNamed(AppRoutes.coconutScreen, ); } 
/// Navigates to the pawpawTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the pawpawTwoScreen.
onTapImgRectanglesevent(BuildContext context) { NavigatorService.pushNamed(AppRoutes.pawpawTwoScreen, ); } 
 }

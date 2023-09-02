import 'bloc/homepage_bloc.dart';import 'models/homepage_model.dart';import 'package:farmmart/core/app_export.dart';import 'package:farmmart/widgets/app_bar/appbar_title.dart';import 'package:farmmart/widgets/app_bar/custom_app_bar.dart';import 'package:farmmart/widgets/custom_search_view.dart';import 'package:flutter/material.dart';class HomepagePage extends StatelessWidget {const HomepagePage({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<HomepageBloc>(create: (context) => HomepageBloc(HomepageState(homepageModelObj: HomepageModel()))..add(HomepageInitialEvent()), child: HomepagePage()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, decoration: AppDecoration.fill, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(148), width: getHorizontalSize(344), margin: getMargin(left: 15, top: 15), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.bottomCenter, child: BlocSelector<HomepageBloc, HomepageState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(width: getHorizontalSize(329), controller: searchController, hintText: "lbl_search".tr, hintStyle: CustomTextStyles.bodyLargeBluegray200, textStyle: CustomTextStyles.bodyLargeBluegray200, alignment: Alignment.bottomCenter, prefix: Container(margin: getMargin(left: 13, top: 10, right: 10, bottom: 10), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(45)), suffix: Padding(padding: EdgeInsets.only(right: getHorizontalSize(15)), child: IconButton(onPressed: () {searchController!.clear();}, icon: Icon(Icons.clear, color: Colors.grey.shade600))), filled: true, fillColor: appTheme.blueGray50, contentPadding: getPadding(top: 12, right: 30, bottom: 12));})), Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(left: 56, bottom: 44), child: Text("msg_32_kingston_ln".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargeDeeporange300))), CustomImageView(svgPath: ImageConstant.imgClock, height: getSize(20), width: getSize(20), alignment: Alignment.bottomRight, margin: getMargin(right: 130, bottom: 46)), Align(alignment: Alignment.bottomRight, child: Padding(padding: getPadding(right: 40, bottom: 45), child: Text("lbl_order_now".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLargeDeeporange300))), CustomAppBar(height: getVerticalSize(83), title: Padding(padding: getPadding(left: 15), child: Row(children: [Container(height: getVerticalSize(69), width: getHorizontalSize(67), margin: getMargin(bottom: 13), decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(1), borderRadius: BorderRadius.circular(getHorizontalSize(34)), border: Border.all(color: appTheme.lime900, width: getHorizontalSize(14)))), AppbarTitle(text: "msg_good_evening_kofi".tr, margin: getMargin(left: 21, top: 58), onTap: () {openDatePickerDialog(context);})])))])), Container(padding: getPadding(left: 13, top: 2, right: 13, bottom: 2), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_categories".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.headlineLarge), Padding(padding: getPadding(top: 7, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: getVerticalSize(154), width: getHorizontalSize(152), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgTypesofcereals, height: getVerticalSize(154), width: getHorizontalSize(150), radius: BorderRadius.circular(getHorizontalSize(21)), alignment: Alignment.center, onTap: () {onTapImgTypesofcereals(context);})])), SizedBox(height: getVerticalSize(154), width: getHorizontalSize(152), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {onTapImgRectanglethirte(context);}), CustomImageView(imagePath: ImageConstant.imgTypesofvegies, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {vegies(context);})]))])), Padding(padding: getPadding(left: 51, top: 1, right: 37), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(bottom: 1), child: Text("lbl_cereal".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)), Padding(padding: getPadding(top: 1), child: Text("lbl_vegetables".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge))])), Padding(padding: getPadding(top: 19, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: getSize(152), width: getSize(152), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(150), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {onTapImgRectanglefiftee(context);}), CustomImageView(imagePath: ImageConstant.imgTypesoffruits, height: getVerticalSize(152), width: getHorizontalSize(151), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {fruits(context);})])), SizedBox(height: getSize(152), width: getSize(152), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(150), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {onTapImgRectanglefourte(context);}), CustomImageView(imagePath: ImageConstant.imgTypesoftubers, height: getSize(152), width: getSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), alignment: Alignment.center, onTap: () {tubers(context);})]))])), Padding(padding: getPadding(left: 57, top: 1, right: 49), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_fruits".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge), Text("lbl_tubers".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)])), Padding(padding: getPadding(top: 19, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), onTap: () {onTapImgRectanglesixtee(context);}), CustomImageView(imagePath: ImageConstant.imgRectangle6, height: getVerticalSize(154), width: getHorizontalSize(152), radius: BorderRadius.circular(getHorizontalSize(30)), onTap: () {onTapImgRectanglesevent(context);})])), Padding(padding: getPadding(left: 51, top: 1, right: 53, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_cereal".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge), Text("lbl_cereal".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge)]))]))])))); } 

/// Displays a date picker dialog to update the selected date
///
/// This function returns a `Future` that completes with `void`.
Future<void> openDatePickerDialog(BuildContext context) async  { var initialState = BlocProvider.of<HomepageBloc>(context).state;DateTime? dateTime  = await showDatePicker(context: context, initialDate: DateTime.now() , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); } 
/// Navigates to the cerealPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the cerealPageScreen.
onTapImgTypesofcereals(BuildContext context) { NavigatorService.pushNamed(AppRoutes.cerealPageScreen, ); } 
/// Navigates to the veggiesPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the veggiesPageScreen.
onTapImgRectanglethirte(BuildContext context) { NavigatorService.pushNamed(AppRoutes.veggiesPageScreen, ); } 
/// Navigates to the veggiesPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the veggiesPageScreen.
vegies(BuildContext context) { NavigatorService.pushNamed(AppRoutes.veggiesPageScreen, ); } 
/// Navigates to the cerealPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the cerealPageScreen.
onTapImgRectanglefiftee(BuildContext context) { NavigatorService.pushNamed(AppRoutes.cerealPageScreen, ); } 
/// Navigates to the fruitsPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the fruitsPageScreen.
fruits(BuildContext context) { NavigatorService.pushNamed(AppRoutes.fruitsPageScreen, ); } 
/// Navigates to the cerealPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the cerealPageScreen.
onTapImgRectanglefourte(BuildContext context) { NavigatorService.pushNamed(AppRoutes.cerealPageScreen, ); } 
/// Navigates to the tubersPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the tubersPageScreen.
tubers(BuildContext context) { NavigatorService.pushNamed(AppRoutes.tubersPageScreen, ); } 
/// Navigates to the cerealPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the cerealPageScreen.
onTapImgRectanglesixtee(BuildContext context) { NavigatorService.pushNamed(AppRoutes.cerealPageScreen, ); } 
/// Navigates to the cerealPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the cerealPageScreen.
onTapImgRectanglesevent(BuildContext context) { NavigatorService.pushNamed(AppRoutes.cerealPageScreen, ); } 
 }

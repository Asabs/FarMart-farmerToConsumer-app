import '../shipping_addresses_screen/widgets/shippingaddress_item_widget.dart';import 'bloc/shipping_addresses_bloc.dart';import 'models/shipping_addresses_model.dart';import 'models/shippingaddress_item_model.dart';import 'package:farmmart/core/app_export.dart';import 'package:farmmart/presentation/homepage_page/homepage_page.dart';import 'package:farmmart/presentation/order_details_page/order_details_page.dart';import 'package:farmmart/presentation/rice_page/rice_page.dart';import 'package:farmmart/widgets/app_bar/appbar_image.dart';import 'package:farmmart/widgets/app_bar/appbar_subtitle.dart';import 'package:farmmart/widgets/app_bar/custom_app_bar.dart';import 'package:farmmart/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ShippingAddressesScreen extends StatelessWidget {ShippingAddressesScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<ShippingAddressesBloc>(create: (context) => ShippingAddressesBloc(ShippingAddressesState(shippingAddressesModelObj: ShippingAddressesModel()))..add(ShippingAddressesInitialEvent()), child: ShippingAddressesScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(180), leadingWidth: 40, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 16, top: 52, bottom: 12), onTap: () {onTapArrowleft2(context);}), centerTitle: true, title: AppbarSubtitle(text: "msg_shipping_addresses2".tr, margin: getMargin(top: 56, bottom: 13)), styleType: Style.bgShadow_1), body: Container(width: double.maxFinite, padding: getPadding(left: 15, right: 15), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(69), width: getHorizontalSize(67), decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(1), borderRadius: BorderRadius.circular(getHorizontalSize(34)), border: Border.all(color: appTheme.lime900, width: getHorizontalSize(14)))), Spacer(), Expanded(child: Padding(padding: getPadding(left: 9, right: 8), child: BlocSelector<ShippingAddressesBloc, ShippingAddressesState, ShippingAddressesModel?>(selector: (state) => state.shippingAddressesModelObj, builder: (context, shippingAddressesModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(25));}, itemCount: shippingAddressesModelObj?.shippingaddressItemList.length ?? 0, itemBuilder: (context, index) {ShippingaddressItemModel model = shippingAddressesModelObj?.shippingaddressItemList[index] ?? ShippingaddressItemModel(); return ShippingaddressItemWidget(model, changeCheckBox: (value) {context.read<ShippingAddressesBloc>().add(ShippingaddressItemEvent(index: index, isCheckbox: value));});});}))), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapAddinactive(context);}, child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(top: 26, right: 13, bottom: 16), color: appTheme.gray900, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder21), child: Container(height: getVerticalSize(38), width: getHorizontalSize(36), padding: getPadding(all: 6), decoration: AppDecoration.outline9.copyWith(borderRadius: BorderRadiusStyle.roundedBorder21), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgGrid, height: getVerticalSize(25), width: getHorizontalSize(24), alignment: Alignment.center)])))))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homepagePage; case BottomBarEnum.Shop: return AppRoutes.ricePage; case BottomBarEnum.Favorites: return "/"; case BottomBarEnum.Profile: return AppRoutes.orderDetailsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homepagePage: return HomepagePage.builder(context); case AppRoutes.ricePage: return RicePage.builder(context); case AppRoutes.orderDetailsPage: return OrderDetailsPage.builder(context); default: return DefaultWidget();} } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowleft2(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the addingShippingAddressScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the addingShippingAddressScreen.
onTapAddinactive(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addingShippingAddressScreen, ); } 
 }

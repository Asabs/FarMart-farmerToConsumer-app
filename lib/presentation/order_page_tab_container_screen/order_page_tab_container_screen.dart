import 'bloc/order_page_tab_container_bloc.dart';import 'models/order_page_tab_container_model.dart';import 'package:farmmart/core/app_export.dart';import 'package:farmmart/presentation/homepage_page/homepage_page.dart';import 'package:farmmart/presentation/order_details_page/order_details_page.dart';import 'package:farmmart/presentation/order_page/order_page.dart';import 'package:farmmart/presentation/rice_page/rice_page.dart';import 'package:farmmart/widgets/app_bar/appbar_image.dart';import 'package:farmmart/widgets/app_bar/custom_app_bar.dart';import 'package:farmmart/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class OrderPageTabContainerScreen extends StatefulWidget {const OrderPageTabContainerScreen({Key? key}) : super(key: key);

@override OrderPageTabContainerScreenState createState() =>  OrderPageTabContainerScreenState();
static Widget builder(BuildContext context) { return BlocProvider<OrderPageTabContainerBloc>(create: (context) => OrderPageTabContainerBloc(OrderPageTabContainerState(orderPageTabContainerModelObj: OrderPageTabContainerModel()))..add(OrderPageTabContainerInitialEvent()), child: OrderPageTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class OrderPageTabContainerScreenState extends State<OrderPageTabContainerScreen> with  TickerProviderStateMixin {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<OrderPageTabContainerBloc, OrderPageTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), appBar: CustomAppBar(height: getVerticalSize(116), title: Padding(padding: getPadding(left: 15), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(69), width: getHorizontalSize(67), decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(1), borderRadius: BorderRadius.circular(getHorizontalSize(34)), border: Border.all(color: appTheme.lime900, width: getHorizontalSize(14))))), AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 1, top: 8, right: 42), onTap: () {onTapArrowleft(context);})])), actions: [AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgBaselinesearch24px, margin: getMargin(left: 19, top: 77, right: 19))]), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 6), child: Text("lbl_my_orders2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.displaySmall))), Container(height: getVerticalSize(30), width: getHorizontalSize(323), margin: getMargin(left: 21, top: 12), child: TabBar(controller: tabviewController, labelColor: theme.colorScheme.onPrimary.withOpacity(1), labelStyle: TextStyle(), unselectedLabelColor: appTheme.gray900, unselectedLabelStyle: TextStyle(), indicator: BoxDecoration(color: appTheme.gray900, borderRadius: BorderRadius.circular(getHorizontalSize(15))), tabs: [Tab(child: Text("lbl_delivered".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_processing".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_cancelled".tr, overflow: TextOverflow.ellipsis))])), Expanded(child: SizedBox(height: getVerticalSize(593), child: TabBarView(controller: tabviewController, children: [OrderPage.builder(context), OrderPage.builder(context), OrderPage.builder(context)])))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
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
onTapArrowleft(BuildContext context) { NavigatorService.goBack(); } 
 }

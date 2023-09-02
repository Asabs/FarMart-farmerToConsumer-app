import 'bloc/homepage_container_bloc.dart';import 'models/homepage_container_model.dart';import 'package:farmmart/core/app_export.dart';import 'package:farmmart/presentation/homepage_page/homepage_page.dart';import 'package:farmmart/presentation/order_details_page/order_details_page.dart';import 'package:farmmart/presentation/rice_page/rice_page.dart';import 'package:farmmart/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class HomepageContainerScreen extends StatelessWidget {HomepageContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomepageContainerBloc>(create: (context) => HomepageContainerBloc(HomepageContainerState(homepageContainerModelObj: HomepageContainerModel()))..add(HomepageContainerInitialEvent()), child: HomepageContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<HomepageContainerBloc, HomepageContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homepagePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homepagePage; case BottomBarEnum.Shop: return AppRoutes.ricePage; case BottomBarEnum.Favorites: return "/"; case BottomBarEnum.Profile: return AppRoutes.orderDetailsPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homepagePage: return HomepagePage.builder(context); case AppRoutes.ricePage: return RicePage.builder(context); case AppRoutes.orderDetailsPage: return OrderDetailsPage.builder(context); default: return DefaultWidget();} } 
 }

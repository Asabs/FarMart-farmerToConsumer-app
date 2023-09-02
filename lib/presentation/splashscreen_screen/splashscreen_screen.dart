import 'bloc/splashscreen_bloc.dart';import 'models/splashscreen_model.dart';import 'package:farmmart/core/app_export.dart';import 'package:flutter/material.dart';class SplashscreenScreen extends StatelessWidget {const SplashscreenScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SplashscreenBloc>(create: (context) => SplashscreenBloc(SplashscreenState(splashscreenModelObj: SplashscreenModel()))..add(SplashscreenInitialEvent()), child: SplashscreenScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<SplashscreenBloc, SplashscreenState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), body: Container(width: double.maxFinite, padding: getPadding(left: 38, right: 38), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.center, child: Container(height: getSize(170), width: getSize(170), decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(1), borderRadius: BorderRadius.circular(getHorizontalSize(85)), border: Border.all(color: appTheme.lime900, width: getHorizontalSize(26))))), Padding(padding: getPadding(top: 4, bottom: 5), child: Text("lbl_farmmart".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.displayLarge))]))));}); } 
 }

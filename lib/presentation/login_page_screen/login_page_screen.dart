import 'bloc/login_page_bloc.dart';import 'models/login_page_model.dart';import 'package:farmmart/core/app_export.dart';import 'package:farmmart/core/utils/validation_functions.dart';import 'package:farmmart/widgets/custom_checkbox_button.dart';import 'package:farmmart/widgets/custom_icon_button.dart';import 'package:farmmart/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:farmmart/domain/googleauth/google_auth_helper.dart';import 'package:google_sign_in/google_sign_in.dart';
// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {LoginPageScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<LoginPageBloc>(create: (context) => LoginPageBloc(LoginPageState(loginPageModelObj: LoginPageModel()))..add(LoginPageInitialEvent()), child: LoginPageScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(170), width: getSize(170), margin: getMargin(top: 80), decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(1), borderRadius: BorderRadius.circular(getHorizontalSize(85)), border: Border.all(color: appTheme.lime900, width: getHorizontalSize(26)))), Container(margin: getMargin(top: 46), padding: getPadding(left: 44, top: 31, right: 44, bottom: 31), decoration: AppDecoration.fill1.copyWith(borderRadius: BorderRadiusStyle.customBorderTL30), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(top: 29), child: Text("lbl_welcome_back".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargePoppinsOnPrimary)), Align(alignment: Alignment.centerLeft, child: Container(width: getHorizontalSize(29), margin: getMargin(left: 3, top: 35), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_email2".tr, style: CustomTextStyles.bodySmallPoppinsOnPrimary), TextSpan(text: "lbl".tr, style: CustomTextStyles.bodySmallPoppinsDeeporangeA400)]), textAlign: TextAlign.left))), BlocSelector<LoginPageBloc, LoginPageState, TextEditingController?>(selector: (state) => state.emailoneController, builder: (context, emailoneController) {return CustomTextFormField(controller: emailoneController, margin: getMargin(left: 3, right: 2), contentPadding: getPadding(left: 20, top: 14, right: 20, bottom: 14), textStyle: theme.textTheme.labelSmall!, hintText: "msg_example_gmail_com".tr, hintStyle: theme.textTheme.labelSmall!, textInputAction: TextInputAction.next, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "Please enter valid email";} return null;}, filled: true, fillColor: theme.colorScheme.onPrimary.withOpacity(1), defaultBorderDecoration: TextFormFieldStyleHelper.outlineBluegray10001, enabledBorderDecoration: TextFormFieldStyleHelper.outlineBluegray10001, focusedBorderDecoration: TextFormFieldStyleHelper.outlineBluegray10001, disabledBorderDecoration: TextFormFieldStyleHelper.outlineBluegray10001);}), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 3, top: 19), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_password2".tr, style: CustomTextStyles.bodySmallPoppinsOnPrimary), TextSpan(text: "lbl".tr, style: CustomTextStyles.bodySmallPoppinsDeeporangeA400)]), textAlign: TextAlign.left))), BlocBuilder<LoginPageBloc, LoginPageState>(builder: (context, state) {return CustomTextFormField(controller: state.passwordoneController, margin: getMargin(left: 3, top: 4, right: 2), contentPadding: getPadding(left: 20, top: 14, bottom: 14), textStyle: theme.textTheme.labelSmall!, hintText: "lbl2".tr, hintStyle: theme.textTheme.labelSmall!, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {context.read<LoginPageBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: getMargin(left: 30, top: 15, right: 15, bottom: 15), child: CustomImageView(svgPath: state.isShowPassword ? ImageConstant.imgAlarm : ImageConstant.imgAlarm))), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(42)), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "Please enter valid password";} return null;}, obscureText: state.isShowPassword, filled: true, fillColor: theme.colorScheme.onPrimary.withOpacity(1), defaultBorderDecoration: TextFormFieldStyleHelper.outlineBluegray10001, enabledBorderDecoration: TextFormFieldStyleHelper.outlineBluegray10001, focusedBorderDecoration: TextFormFieldStyleHelper.outlineBluegray10001, disabledBorderDecoration: TextFormFieldStyleHelper.outlineBluegray10001);}), Align(alignment: Alignment.centerLeft, child: BlocSelector<LoginPageBloc, LoginPageState, bool?>(selector: (state) => state.isCheckbox, builder: (context, isCheckbox) {return CustomCheckboxButton(alignment: Alignment.centerLeft, text: "msg_i_agree_to_the_terms".tr, iconSize: getHorizontalSize(10), value: isCheckbox, margin: getMargin(left: 3, top: 5), textStyle: CustomTextStyles.poppinsOnPrimary, onChange: (value) {context.read<LoginPageBloc>().add(ChangeCheckBoxEvent(value: value));});})), CustomIconButton(height: 33, width: 106, margin: getMargin(top: 22), onTap: () {Login(context);}, child: CustomImageView(svgPath: ImageConstant.imgExclude)), Padding(padding: getPadding(top: 32), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: getPadding(top: 7, bottom: 6), child: SizedBox(width: getHorizontalSize(126), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray100))), Text("lbl_or".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelSmallBluegray100), Padding(padding: getPadding(top: 7, bottom: 6), child: SizedBox(width: getHorizontalSize(126), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray100)))])), Padding(padding: getPadding(top: 15), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {Google(context);}, child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: theme.colorScheme.onPrimary.withOpacity(1), shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: getVerticalSize(31), width: getHorizontalSize(35), padding: getPadding(left: 10, top: 8, right: 10, bottom: 8), decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgFlatcoloriconsgoogle, height: getSize(14), width: getSize(14), alignment: Alignment.center)])))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 18), color: theme.colorScheme.onPrimary.withOpacity(1), shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: getVerticalSize(31), width: getHorizontalSize(35), padding: getPadding(left: 11, top: 8, right: 11, bottom: 8), decoration: AppDecoration.outline1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgUser, height: getVerticalSize(14), width: getHorizontalSize(11), alignment: Alignment.center)])))])), Padding(padding: getPadding(top: 14), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_don_t_have_an_account2".tr, style: CustomTextStyles.bodySmallPoppins), TextSpan(text: " ", style: CustomTextStyles.labelMediumPoppinsMedium)]), textAlign: TextAlign.left)), GestureDetector(onTap: () {onTapTxtSignup(context);}, child: Padding(padding: getPadding(top: 13), child: Text("lbl_sign_up".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelMediumPoppinsTeal400)))]))]))))); } 
/// Performs a Google sign-in and returns a [GoogleUser] object.
///
/// If the sign-in is successful, the [onSuccessGoogleAuthResponse] method is called
/// with the [GoogleUser] object and [context] as a parameters.
/// If the sign-in fails, the [onErrorGoogleAuthResponse] method is called with the [context] as a parameter.
///
/// Throws an exception if the Google sign-in process fails.
Login(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            onSuccessGoogleAuthResponse(googleUser, context);
          } else {
            onErrorGoogleAuthResponse(context);
          }
        }).catchError((onError) {
            onErrorGoogleAuthResponse(context);
        });
         } 
/// The [BuildContext] parameter represents current [BuildContext]
/// The [BuildContext] parameter represents current [BuildContext]
onSuccessGoogleAuthResponse(GoogleSignInAccount googleUser, BuildContext context, ) { 
context.read<LoginPageBloc>().add(null(),);

context.read<LoginPageBloc>().add(null(googleUser: googleUser,),);
 } 
/// Displays an alert dialog when the action is triggered.
/// The dialog box contains a title and a message with the `Please try again`
onErrorGoogleAuthResponse(BuildContext context) { showDialog(context: context,builder: (_) => AlertDialog(title: const Text('Unable to Login'),content: const Text('Please try again'),actions: [TextButton(onPressed: () {Navigator.pop(context);},child: const Text('Ok'))],));
showDialog(context: context,builder: (_) => AlertDialog(title: const Text('Google'),content: const Text('Couldn't sign in with Google'),actions: [TextButton(onPressed: () {Navigator.pop(context);},child: const Text('Ok'))],)); } 
/// Performs a Google sign-in and returns a [GoogleUser] object.
///
/// If the sign-in is successful, the [onSuccessGoogleAuthResponse] method is called
/// with the [GoogleUser] object and [context] as a parameters.
/// If the sign-in fails, the [onErrorGoogleAuthResponse] method is called with the [context] as a parameter.
///
/// Throws an exception if the Google sign-in process fails.
Google(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            onSuccessGoogleAuthResponse(googleUser, context);
          } else {
            onErrorGoogleAuthResponse(context);
          }
        }).catchError((onError) {
            onErrorGoogleAuthResponse(context);
        });
         } 
onSuccessGoogleAuthResponse(GoogleSignInAccount googleUser, BuildContext context, ) {  } 
/// Navigates to the signupPageScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the signupPageScreen.
onTapTxtSignup(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signupPageScreen, ); } 
 }

import 'package:flutter/material.dart';
import 'package:farmmart/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:farmmart/presentation/homepage_container_screen/homepage_container_screen.dart';
import 'package:farmmart/presentation/cereal_page_screen/cereal_page_screen.dart';
import 'package:farmmart/presentation/veggies_page_screen/veggies_page_screen.dart';
import 'package:farmmart/presentation/fruits_page_screen/fruits_page_screen.dart';
import 'package:farmmart/presentation/tubers_page_screen/tubers_page_screen.dart';
import 'package:farmmart/presentation/login_page_screen/login_page_screen.dart';
import 'package:farmmart/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:farmmart/presentation/oranges_screen/oranges_screen.dart';
import 'package:farmmart/presentation/yam_screen/yam_screen.dart';
import 'package:farmmart/presentation/oranges_one_screen/oranges_one_screen.dart';
import 'package:farmmart/presentation/signup_page_screen/signup_page_screen.dart';
import 'package:farmmart/presentation/order_page_tab_container_screen/order_page_tab_container_screen.dart';
import 'package:farmmart/presentation/wheat_screen/wheat_screen.dart';
import 'package:farmmart/presentation/mango_screen/mango_screen.dart';
import 'package:farmmart/presentation/cocoyam_screen/cocoyam_screen.dart';
import 'package:farmmart/presentation/mango_one_screen/mango_one_screen.dart';
import 'package:farmmart/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:farmmart/presentation/maize_screen/maize_screen.dart';
import 'package:farmmart/presentation/pineapple_one_screen/pineapple_one_screen.dart';
import 'package:farmmart/presentation/sweet_potato_screen/sweet_potato_screen.dart';
import 'package:farmmart/presentation/payment_card_screen/payment_card_screen.dart';
import 'package:farmmart/presentation/pineapple_screen/pineapple_screen.dart';
import 'package:farmmart/presentation/settings_screen/settings_screen.dart';
import 'package:farmmart/presentation/millet_screen/millet_screen.dart';
import 'package:farmmart/presentation/banana_one_screen/banana_one_screen.dart';
import 'package:farmmart/presentation/potato_screen/potato_screen.dart';
import 'package:farmmart/presentation/shipping_addresses_screen/shipping_addresses_screen.dart';
import 'package:farmmart/presentation/settings_passwordchange_screen/settings_passwordchange_screen.dart';
import 'package:farmmart/presentation/banana_screen/banana_screen.dart';
import 'package:farmmart/presentation/beans_screen/beans_screen.dart';
import 'package:farmmart/presentation/coconut_screen/coconut_screen.dart';
import 'package:farmmart/presentation/cassava_screen/cassava_screen.dart';
import 'package:farmmart/presentation/adding_shipping_address_screen/adding_shipping_address_screen.dart';
import 'package:farmmart/presentation/iphone_13_13_pro_nineteen_screen/iphone_13_13_pro_nineteen_screen.dart';
import 'package:farmmart/presentation/coconut_one_screen/coconut_one_screen.dart';
import 'package:farmmart/presentation/pawpaw_two_screen/pawpaw_two_screen.dart';
import 'package:farmmart/presentation/pawpaw_one_screen/pawpaw_one_screen.dart';
import 'package:farmmart/presentation/pawpaw_screen/pawpaw_screen.dart';
import 'package:farmmart/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String cerealPageScreen = '/cereal_page_screen';

  static const String veggiesPageScreen = '/veggies_page_screen';

  static const String fruitsPageScreen = '/fruits_page_screen';

  static const String tubersPageScreen = '/tubers_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String ricePage = '/rice_page';

  static const String orangesScreen = '/oranges_screen';

  static const String yamScreen = '/yam_screen';

  static const String orangesOneScreen = '/oranges_one_screen';

  static const String signupPageScreen = '/signup_page_screen';

  static const String orderPage = '/order_page';

  static const String orderPageTabContainerScreen =
      '/order_page_tab_container_screen';

  static const String wheatScreen = '/wheat_screen';

  static const String mangoScreen = '/mango_screen';

  static const String cocoyamScreen = '/cocoyam_screen';

  static const String mangoOneScreen = '/mango_one_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String orderDetailsPage = '/order_details_page';

  static const String maizeScreen = '/maize_screen';

  static const String pineappleOneScreen = '/pineapple_one_screen';

  static const String sweetPotatoScreen = '/sweet_potato_screen';

  static const String paymentCardScreen = '/payment_card_screen';

  static const String pineappleScreen = '/pineapple_screen';

  static const String settingsScreen = '/settings_screen';

  static const String milletScreen = '/millet_screen';

  static const String bananaOneScreen = '/banana_one_screen';

  static const String potatoScreen = '/potato_screen';

  static const String shippingAddressesScreen = '/shipping_addresses_screen';

  static const String settingsPasswordchangeScreen =
      '/settings_passwordchange_screen';

  static const String bananaScreen = '/banana_screen';

  static const String beansScreen = '/beans_screen';

  static const String coconutScreen = '/coconut_screen';

  static const String cassavaScreen = '/cassava_screen';

  static const String addingShippingAddressScreen =
      '/adding_shipping_address_screen';

  static const String iphone1313ProNineteenScreen =
      '/iphone_13_13_pro_nineteen_screen';

  static const String coconutOneScreen = '/coconut_one_screen';

  static const String pawpawTwoScreen = '/pawpaw_two_screen';

  static const String pawpawOneScreen = '/pawpaw_one_screen';

  static const String pawpawScreen = '/pawpaw_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashscreenScreen: SplashscreenScreen.builder,
        homepageContainerScreen: HomepageContainerScreen.builder,
        cerealPageScreen: CerealPageScreen.builder,
        veggiesPageScreen: VeggiesPageScreen.builder,
        fruitsPageScreen: FruitsPageScreen.builder,
        tubersPageScreen: TubersPageScreen.builder,
        loginPageScreen: LoginPageScreen.builder,
        profilePageScreen: ProfilePageScreen.builder,
        orangesScreen: OrangesScreen.builder,
        yamScreen: YamScreen.builder,
        orangesOneScreen: OrangesOneScreen.builder,
        signupPageScreen: SignupPageScreen.builder,
        orderPageTabContainerScreen: OrderPageTabContainerScreen.builder,
        wheatScreen: WheatScreen.builder,
        mangoScreen: MangoScreen.builder,
        cocoyamScreen: CocoyamScreen.builder,
        mangoOneScreen: MangoOneScreen.builder,
        paymentMethodScreen: PaymentMethodScreen.builder,
        maizeScreen: MaizeScreen.builder,
        pineappleOneScreen: PineappleOneScreen.builder,
        sweetPotatoScreen: SweetPotatoScreen.builder,
        paymentCardScreen: PaymentCardScreen.builder,
        pineappleScreen: PineappleScreen.builder,
        settingsScreen: SettingsScreen.builder,
        milletScreen: MilletScreen.builder,
        bananaOneScreen: BananaOneScreen.builder,
        potatoScreen: PotatoScreen.builder,
        shippingAddressesScreen: ShippingAddressesScreen.builder,
        settingsPasswordchangeScreen: SettingsPasswordchangeScreen.builder,
        bananaScreen: BananaScreen.builder,
        beansScreen: BeansScreen.builder,
        coconutScreen: CoconutScreen.builder,
        cassavaScreen: CassavaScreen.builder,
        addingShippingAddressScreen: AddingShippingAddressScreen.builder,
        iphone1313ProNineteenScreen: Iphone1313ProNineteenScreen.builder,
        coconutOneScreen: CoconutOneScreen.builder,
        pawpawTwoScreen: PawpawTwoScreen.builder,
        pawpawOneScreen: PawpawOneScreen.builder,
        pawpawScreen: PawpawScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashscreenScreen.builder
      };
}

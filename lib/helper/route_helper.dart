import 'package:tremortech/view/screens/more/widget/address/address_screen.dart';
import 'package:tremortech/view/screens/more/widget/favourites/favourites_screen.dart';
import 'package:tremortech/view/screens/more/widget/langauge/langauge_screen.dart';
import 'package:tremortech/view/screens/more/widget/orders/orders_screen.dart';
import 'package:tremortech/view/screens/more/widget/password/password_screen.dart';
import 'package:tremortech/view/screens/more/widget/privacypolicy/privacy_policy_screen.dart';
import 'package:tremortech/view/screens/more/widget/profile/profile_screen.dart';
import 'package:tremortech/view/screens/more/widget/refundpolicy/refund_policy_screen.dart';
import 'package:tremortech/view/screens/more/widget/termsandconditions/terms_and_conditions_screen.dart';
import 'package:get/get.dart';
import 'package:tremortech/view/screens/auth/widgets/signinscreen.dart';
import 'package:tremortech/view/screens/auth/widgets/signupscreen.dart';
import 'package:tremortech/view/screens/dashboard/dashboard_screen.dart';
import 'package:tremortech/view/screens/profile/widget/edit_profile_screen.dart';
import 'package:tremortech/view/screens/profile/widget/notification_screen.dart';
import 'package:tremortech/view/screens/profile/widget/privacy_policy_screen.dart';
import 'package:tremortech/view/screens/profile/widget/security_screen.dart';
import 'package:tremortech/view/screens/search/search_product_screen.dart';

import 'package:tremortech/view/screens/splash/splashscreen.dart';

class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String auth = '/auth';
  static const String register = '/register';
  static const String dashboard = '/dashboard';
  static const String surveyslist = '/surveyslist';
  static const String addsurveyquestion = '/addsurveyquestion';
  static const String createsurvey = '/createsurvey';
  static const String profile = '/profile';
  static const String search = '/search';
  static const String editprofile = '/editprofile';
  static const String changenotifications = '/changenotifications';
  static const String security = '/security';
  static const String privacypolicy = '/privacypolicy';
  static const String category = '/category';
  static const String shopdashboard = '/shopdashboard';
  static const String addstock = '/addstock';
  static const String orderdetails = '/orderdetails';

  //profile
  static const String myprofile = '/myprofile';
  static const String myorders = '/myorders';
  static const String myfavourites = '/myfavourites';
  static const String myaddress = '/myaddress';
  static const String mylanguage = '/mylanguage';
  static const String mypassword = '/mypassword';
  static const String myrefundpolicy = '/myrefundpolicy';
  static const String mytermsandconditions = '/mytermsandconditions';
  static const String myprivacypolicy = '/myprivacypolicy';

  static getInitialRoute() => initial;
  static getSplashRoute() => splash;
  static getAuthRoute(String name) => '$auth?name=$name';
  static getRegisterRoute(String name) => '$register?name=$name';
  static getDashboardRoute(String name) => '$dashboard?name=$name';
  static getChangenotifications(String name) =>
      '$changenotifications?name=$name';
  static getEditprofile(String editprofile) => '$editprofile?name=$editprofile';
  static getPrivacypolicy(String privacypolicy) =>
      '$privacypolicy?name=$privacypolicy';
  static getSecurity(String security) => '$security?name=$security';
  static getsurveyslistRoute(String name) => '$surveyslist?name=$name';
  static getAddsurveyquestionRoute(String name) =>
      '$addsurveyquestion?name=$name';
  static getCreatesurveyRoute(String name) => '$createsurvey?name=$name';
  static getProfileRoute(String name) => '$profile?name=$name';
  static getSearchRoute(String name) => '$search?name=$name';
  static getCategoryRoute(String name) => '$category?name=$name';
  static getShopDashboardRoute(String name) => '$shopdashboard?name=$name';
  static getAddStockRoute(String name) => '$addstock?name=$name';
  static getOrdersDeatilsRoute(String name) => '$orderdetails?name=$name';

  //profile
  static getMyProfileRoute(String name) => '$myprofile?name=$name';
  static getMyOrdersRoute(String name) => '$myorders?name=$name';
  static getMyFavouritesRoute(String name) => '$myfavourites?name=$name';
  static getMyAddressRoute(String name) => '$myaddress?name=$name';
  static getMyLanguageRoute(String name) => '$mylanguage?name=$name';
  static getMyPasswordRoute(String name) => '$mypassword?name=$name';
  static getMyRefundPolicyRoute(String name) => '$myrefundpolicy?name=$name';
  static getMyTermsAndConditionsRoute(String name) =>
      '$mytermsandconditions?name=$name';
  static getMyPrivacyPolicyRoute(String name) => '$myprivacypolicy?name=$name';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const SplashScreen()),
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(
      name: auth,
      page: () => const SignInScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: register,
      page: () => const SignUpScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: dashboard,
      page: () => const DashboardScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: search,
      page: () => const SearchScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: editprofile,
      page: () => const EditProfileScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: changenotifications,
      page: () => const ChangeNotificationScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: security,
      page: () => const SecurityScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: privacypolicy,
      page: () => const PrivacyPolicyScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: myprofile,
      page: () => const MyProfileScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: myorders,
      page: () => const MyOrdersScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: myfavourites,
      page: () => const MyFavouritesScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: myaddress,
      page: () => const MyAddressScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: mylanguage,
      page: () => const MyLanguageScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: mypassword,
      page: () => const MyPasswordChangeScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: myrefundpolicy,
      page: () => const MyRefundPolicyScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: mytermsandconditions,
      page: () => const MyTermsAndConditions(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: myprivacypolicy,
      page: () => const MyPrivacyPolicyScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}

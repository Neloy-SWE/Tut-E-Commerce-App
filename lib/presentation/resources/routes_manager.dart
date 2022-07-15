import 'package:flutter/material.dart';
import 'package:tut_e_commerce_app/presentation/forgot_password/forgot_password.dart';
import 'package:tut_e_commerce_app/presentation/login/login.dart';
import 'package:tut_e_commerce_app/presentation/main/main_view.dart';
import 'package:tut_e_commerce_app/presentation/onboarding/onboarding.dart';
import 'package:tut_e_commerce_app/presentation/register/register.dart';
import 'package:tut_e_commerce_app/presentation/splash/splash.dart';
import 'package:tut_e_commerce_app/presentation/store_details/store_details.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (builder) => const SplashView(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (builder) => const OnBoardingView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (builder) => const LoginView(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (builder) => const RegisterView(),
        );
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (builder) => const ForgotPassWordView(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (builder) => const MainView(),
        );
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(
          builder: (builder) => const StoreDetailsView(),
        );
      default:
        return UndefineRoute();
    }
  }

  static Route<dynamic> UndefineRoute() {
    return MaterialPageRoute(
      builder: (builder) => Scaffold(
        appBar: AppBar(
          title: const Text("No Page Found"),
        ),
        body: const Center(
          child: Text("No Page Found"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ventruely/utils/Routes/routes_name.dart';
import 'package:ventruely/view/chat/my_chat_view.dart';
import 'package:ventruely/view/get_started/forgot_screen_view.dart';
import 'package:ventruely/view/get_started/let_you_in_view.dart';
import 'package:ventruely/view/get_started/profile_detail_view.dart';
import 'package:ventruely/view/get_started/signUp_view.dart';
import 'package:ventruely/view/group/group_view.dart';
import 'package:ventruely/view/home/home_view.dart';
import 'package:ventruely/view/home/status_view.dart';
import 'package:ventruely/view/home/view_new_view.dart';
import 'package:ventruely/view/intro_sliders/intro_slider_1_view.dart';
import 'package:ventruely/view/navbar_view.dart';
import 'package:ventruely/view/notifications/notification_view.dart';
import 'package:ventruely/view/profile/profile_view.dart';
import 'package:ventruely/view/search/search_view.dart';

import '../../view/get_started/loginview.dart';
import '../../view/intro_sliders/intro_slider_2_view.dart';
import '../../view/intro_sliders/intro_slider_3.dart';
import '../../view/splash_view.dart';



class Routes{

  static Route<dynamic> generateRoute (RouteSettings settings){

    switch(settings.name){

    // Splash Screen Route

      case RoutesName.splash:
        return MaterialPageRoute(builder: (context) => const SplashView());
    // Get Started Screens Routes
      case RoutesName.intro1:
        return MaterialPageRoute(builder: (context) => const IntroSlider1View());
      case RoutesName.intro2:
        return MaterialPageRoute(builder: (context) => const IntroSlider2View());
      case RoutesName.intro3:
        return MaterialPageRoute(builder: (context) => const IntroSlider3View());
      case RoutesName.letYouIn:
        return MaterialPageRoute(builder: (context) => const LetYouInView());
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (context) => const SignUpView());
      case RoutesName.profileDetail:
        return MaterialPageRoute(builder: (context) => const ProfileDetailView());
      case RoutesName.forgotPassword:
        return MaterialPageRoute(builder: (context) => const ForgotScreenView());

        // Home Screens Routes

      case RoutesName.homeNavBar:
        return MaterialPageRoute(builder: (context) => const homeNavBar());
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => const HomeView());
      case RoutesName.status:
        return MaterialPageRoute(builder: (context) => const StatusView());
      case RoutesName.viewNews:
        return MaterialPageRoute(builder: (context) => const ViewNewsView());

       // Group Screens Routes

      case RoutesName.group:
        return MaterialPageRoute(builder: (context) => const GroupView());

      // Notification Screens Routes

      case RoutesName.notification:
        return MaterialPageRoute(builder: (context) => const NotificationsView());

      // Search Screens Routes

      case RoutesName.search:
        return MaterialPageRoute(builder: (context) => const SearchView());

      // Profile Screens Routes

      case RoutesName.profile:
        return MaterialPageRoute(builder: (context) => const ProfileView());

      // Chat Screens Routes

      case RoutesName.myChat:
        return MaterialPageRoute(builder: (context) => const MyChatView());


      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          );
        });
    }
  }

}
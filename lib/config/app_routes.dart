import 'package:gods_time/pages/edith_profile_page.dart';
import 'package:gods_time/pages/home_page.dart';
import 'package:gods_time/pages/login_page.dart';
import 'package:gods_time/pages/main_page.dart';

class AppRoutes {

static final pages = {
    '/':(context) => LoginPage(),
    '/main':(context) => MainPage(),
    '/home':(context) => HomePage(),
    '/edith_profile':(context) => EdithProfilePage(),

  };

  static const login = '/';
  static const home = '/home';
  static const main = 'main';
  static const edith = '/edith_profile';
}
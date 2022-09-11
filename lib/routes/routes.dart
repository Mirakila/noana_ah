import 'package:flutter/material.dart';
import 'package:noana/screens/authentification/forgot_password.dart';
import 'package:noana/screens/authentification/sign.dart';
import 'package:noana/screens/authentification/sign_in.dart';
import 'package:noana/screens/authentification/sign_up.dart';
import 'package:noana/screens/map/my_location.dart';
import 'package:noana/screens/search/discover.dart';
import 'package:noana/screens/search/nearest.dart';
import 'package:noana/screens/user/profile.dart';

var routes = <String, WidgetBuilder>{
  '/sign': (context) => const Sign(),
  '/sign_in': (context) => const SignIn(),
  '/sign_up': (context) => const SignUp(),
  '/forgot_password': (context) => const ForgotPassword(),
  '/profile': (context) => const Profile(),
  '/my_location': (context) => const MyLocation(),
  '/discover': (context) => const Discover(),
  '/nearest': (context) => const Nearest(),
};

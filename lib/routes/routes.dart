import 'package:flutter/material.dart';
import 'package:noana/screens/authentification/forgot_password.dart';
import 'package:noana/screens/authentification/sign.dart';
import 'package:noana/screens/authentification/sign_in.dart';
import 'package:noana/screens/authentification/sign_up.dart';

var routes = <String, WidgetBuilder>{
  '/sign': (context) => Sign(),
  '/sign_in': (context) => SignIn(),
  '/sign_up': (context) => SignUp(),
  '/forgot_password': (context) => ForgotPassword(),
};

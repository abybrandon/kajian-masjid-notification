import 'package:flutter/material.dart';
import 'package:kkp/auth/LoginDummy.dart';
import 'package:kkp/login/login.dart';
import 'package:kkp/login/signup.dart';
import 'package:kkp/page/homepage.dart';
import 'package:kkp/widget/navigationbar.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = Provider.of<User>(context);
    return (firebaseUser == null) ? Login() : NavigatorScreen();
  }
}

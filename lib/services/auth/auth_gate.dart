import 'package:firebase_auth/firebase_auth.dart';
import 'package:first/pages/home_page.dart';
import 'package:first/pages/interest_page.dart';
import 'package:first/services/auth/login_or_register.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const InterestsPage();
            } else {
              return const LoginOrRegister();
            }
          }),
    );
  }
}

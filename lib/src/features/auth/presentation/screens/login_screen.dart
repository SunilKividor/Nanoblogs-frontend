import 'package:flutter/material.dart';
import 'package:nanoblogs/src/features/auth/presentation/widgets/animated_banner.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AnimatedBanner(title: 'Login',),
        ],
      )
    );
  }
}
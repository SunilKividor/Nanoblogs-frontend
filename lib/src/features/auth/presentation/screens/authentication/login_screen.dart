import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nanoblogs/src/core/utils/enums.dart';
import 'package:nanoblogs/src/features/auth/presentation/widgets/auth_textfield.dart';
import 'package:nanoblogs/src/features/common/widgets/square_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthTextField(
              controller: usernameController,
              title: 'Username',
              hintText: 'username',
            ),
            const Gap(20),
            AuthTextField(
              controller: passwordController,
              title: 'Password',
              hintText: 'password',
            ),
            const Gap(40),
            SquareFilledButton(
              title: 'Log In',
              onTap: () {},
              color: const Color(0xfff6ce9f),
              size: ButtonSize.large,
            )
          ],
        ));
  }
}

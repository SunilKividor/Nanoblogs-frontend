import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:nanoblogs/src/config/routes/router.dart';
import 'package:nanoblogs/src/core/utils/enums.dart';
import 'package:nanoblogs/src/features/auth/domain/entities/auth_entities.dart';
import 'package:nanoblogs/src/features/auth/presentation/provider/auth_provider.dart';
import 'package:nanoblogs/src/features/auth/presentation/widgets/auth_textfield.dart';
import 'package:nanoblogs/src/features/common/widgets/square_button.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    final LoginReqBodyEntity loginReqBodyEntity = LoginReqBodyEntity(
        username: usernameController.text, password: passwordController.text);
    final isLoggedIn = await ref.read(authProvider.notifier).login(loginReqBodyEntity);
    if(isLoggedIn) {
      // ignore: use_build_context_synchronously
      const SignUpScreenRoute().push(context);
    }
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

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nanoblogs/src/config/routes/router.dart';
import 'package:nanoblogs/src/config/theme/font.dart';
import 'package:nanoblogs/src/core/resources/extensions.dart';
import 'package:nanoblogs/src/core/utils/enums.dart';
import 'package:nanoblogs/src/features/common/widgets/square_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final (_, height) = context.screenSize;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24,vertical: 10),
              child: Text('Intro',
              style: TextStyle(
                fontWeight: FontWeight.w500
              )
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
              child: Text('Start reading articles,\nbooks,listen to design\nrelated videos',
              style: Calladia(
                fontSize: 28,
                fontWeight: FontWeight.bold
              )
              ),
            ),
            Gap(height*0.08),
            Container(
              height: height * 0.3,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareOutlineButton(
                    title: 'Get Started',
                    onTap: (){
                      const SignUpScreenRoute().push(context);
                    },
                    size: ButtonSize.large,
                  ),
                  const Gap(30),
                  SquareFilledButton(
                    title: 'Log In',
                    onTap: () {
                      const LoginScreenRoute().push(context);
                    } ,
                    size: ButtonSize.large,
                    color: const Color(0xfff6ce9f),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

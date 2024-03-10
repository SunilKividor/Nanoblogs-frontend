import 'package:flutter/material.dart';
import 'package:nanoblogs/src/config/theme/font.dart';
import 'package:nanoblogs/src/core/resources/extensions.dart';

class AnimatedBanner extends StatefulWidget {
  const AnimatedBanner({super.key, required this.title});

  final String title;

  @override
  State<AnimatedBanner> createState() => _AnimatedBannerState();
}

class _AnimatedBannerState extends State<AnimatedBanner> {
  @override
  Widget build(BuildContext context) {
    final (width,height) = context.screenSize;
    return Container(
      alignment: Alignment.center,
      height: height *0.28,
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xffd2e5fa),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Text(widget.title,style: Poppins(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),),
    );
  }
}
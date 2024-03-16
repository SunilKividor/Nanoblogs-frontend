import 'package:flutter/material.dart';
import 'package:nanoblogs/src/core/resources/extensions.dart';
import 'package:nanoblogs/src/core/utils/enums.dart';

class SquareFilledButton extends StatelessWidget {
  const SquareFilledButton(
      {super.key,
      this.size = ButtonSize.medium,
      required this.title,
      required this.onTap,
      required this.color});

  final ButtonSize size;
  final String title;
  final Function() onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: size.height,
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            elevation: 0.5,
            backgroundColor: color,
            foregroundColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        child: Text(title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      ),
    );
  }
}

class SquareOutlineButton extends StatelessWidget {
  const SquareOutlineButton({
    super.key,
    this.size = ButtonSize.medium,
    required this.title,
    required this.onTap,
  });

  final ButtonSize size;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        height: size.height,
        width: double.maxFinite,
        child: OutlinedButton(
          onPressed: onTap,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            side: BorderSide(color: Colors.black.withOpacity(0.2),width: 1.3),
          ),
          child: Text(title),
        ));
  }
}

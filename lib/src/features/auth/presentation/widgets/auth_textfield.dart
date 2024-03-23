// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AuthTextField extends StatelessWidget {
  AuthTextField({
    Key? key,
    required this.controller,
    this.obscure = false,
    required this.title,
    required this.hintText
  }) : super(key: key);

  TextEditingController controller;
  final bool obscure;
  final String title;
  final String hintText;

  final formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500
          ),
          ),
          Form(
            key: formKey,
            child: TextField(
              controller: controller,
              obscureText: obscure,
              style: const TextStyle(
                fontSize: 14,
                decoration: TextDecoration.none
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.3),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
                
              ),
          ))
        ],
      ),
    );
  }
}

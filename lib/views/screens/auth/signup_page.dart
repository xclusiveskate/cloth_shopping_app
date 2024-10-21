import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: heightQuery(context) * 0.3,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}

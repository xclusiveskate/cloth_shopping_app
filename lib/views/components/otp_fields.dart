import 'package:flutter/material.dart';

class OtpFields extends StatefulWidget {
  const OtpFields({
    super.key,
    required this.controllers,
  });
  final List<TextEditingController> controllers;

  @override
  State<OtpFields> createState() => _OtpFieldsState();
}

class _OtpFieldsState extends State<OtpFields> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
            4,
            (index) => SizedBox(
                  height: 60,
                  width: 70,
                  child: TextField(
                    controller: widget.controllers[index],
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                  ),
                ))
      ],
    );
  }
}

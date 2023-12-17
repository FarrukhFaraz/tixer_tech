import 'package:flutter/material.dart';

import '../../Servies/color.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.function, required this.text});

  final Function function;
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          maximumSize: Size(size.width, 50),
          minimumSize: Size(size.width, 50),
          backgroundColor: AppColor().mainColor,
          foregroundColor: AppColor().white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      onPressed: () {
        function();
      },
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}

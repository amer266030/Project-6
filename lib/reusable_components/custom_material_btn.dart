import 'package:flutter/material.dart';
import 'package:tickets_app/core/extensions/color_ext.dart';
import 'package:tickets_app/core/extensions/string_ext.dart';

class CustomMaterialBtn extends StatelessWidget {
  const CustomMaterialBtn(
      {super.key, this.bKColor, required this.text, this.onPressed});
  final Color? bKColor;
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: bKColor ?? C.accent,
              onPressed: onPressed,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(text).styled(
                    color: Colors.white, size: 16, weight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

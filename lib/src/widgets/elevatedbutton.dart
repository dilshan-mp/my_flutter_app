import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final Widget targetPage;
  final EdgeInsets margin;

  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    required this.targetPage,
    required this.margin
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 52,
      margin: margin,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => targetPage),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF002DE3),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 1.75,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

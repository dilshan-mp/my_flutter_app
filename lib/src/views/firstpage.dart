import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/views/secondpage.dart';
import 'package:my_flutter_app/src/widgets/elevatedbutton.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                top: 135,
                left: 62,
                right: 62,
              ),
              width: 262,
              height: 271,
              child: Image.asset(
                'assets/images/Illustration.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            //color: Colors.amber,
            width: 280,
            height: 90,
            margin: const EdgeInsets.only(
              top: 42,
              left: 47,
              right: 47,
            ),
            child: const Text(
              'Connect easily with your family and friends over countries',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 1.200,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            //color: Colors.amber,
            width: 148,
            height: 24,
            margin: const EdgeInsets.only(
              top: 126,
              left: 114,
              right: 114,
            ),
            child: const Text(
              'Terms & Privacy Policy',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.71,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const CustomElevatedButton(
            buttonText: 'start messagin',
            targetPage: SecondPage(),
            margin: EdgeInsets.only(
              top: 18,
              left: 24,
              right: 24,
            ),
          )
        ],
      ),
    );
  }
}

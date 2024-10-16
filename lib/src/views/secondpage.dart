import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/views/profile.dart';
import 'package:my_flutter_app/src/widgets/elevatedbutton.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 320,
                height: 86,
                margin: const EdgeInsets.only(
                  top: 169,
                  // left: 40,
                  // right: 40,
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      width: 320,
                      height: 30,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Enter Your Phone Number',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          height: 1.255,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 320,
                      height: 48,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Please confirm your country code and enter your phone number',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          height: 1.71,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 48,
                left: 24,
                right: 24,
              ),
              width: 327,
              height: 36,
              child: Row(
                children: [
                  Container(
                    color: const Color(0xFFF7F7FC),
                    width: 74,
                    height: 36,
                    child: Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          margin: const EdgeInsets.only(
                            left: 8,
                            top: 6,
                            bottom: 6,
                          ),
                          child: Image.asset(
                            'assets/images/Flag.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 28,
                          height: 24,
                          margin: const EdgeInsets.only(
                            left: 8,
                            top: 6,
                            bottom: 6,
                          ),
                          child: const Text(
                            '+64',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    color: const Color(0xFFF7F7FC),
                    width: 245,
                    height: 36,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 6),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.grey.shade500),
                        fillColor: const Color(0xFFF7F7FC),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const CustomElevatedButton(
              buttonText: 'Continue',
              targetPage: ProfilePage(),
              margin: EdgeInsets.only(
                top: 81,
                left: 24,
                right: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}

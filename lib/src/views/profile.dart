import 'package:flutter/material.dart';
import 'package:my_flutter_app/src/views/secondpage.dart';
import 'package:my_flutter_app/src/widgets/elevatedbutton.dart';
import 'package:my_flutter_app/src/widgets/textfield.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Profile"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 101,
                height: 101,
                margin: const EdgeInsets.only(
                  top: 136,
                  left: 134,
                  right: 134,
                ),
                child: Image.asset('assets/images/Change Avatar.png'),
              ),
            ),
            const CustomTextField(
              hintText: 'First Name (Required)',
              margin: EdgeInsets.only(
                top: 31,
                left: 24,
                right: 24,
              ),
            ),
            const CustomTextField(
              hintText: 'Last Name (Optional)',
              margin: EdgeInsets.only(
                top: 12,
                left: 24,
                right: 24,
              ),
            ),
            const CustomElevatedButton(
              buttonText: 'Save',
              margin: EdgeInsets.only(
                top: 282,
                bottom: 30,
                left: 26,
                right: 26,
              ),
              targetPage: SecondPage(),
            )
          ],
        ),
      ),
    );
  }
}

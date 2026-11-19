import 'package:app_one/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 144, 46, 46),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              color: Color(0xff121223),
              height: 300,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "assets/icons/Ellipse 1005.svg",
                    color: Colors.amber,
                  ),
                  Positioned(
                    top: 50,
                    left: 30,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          print("************************************");
                          print("Pressedddddd");
                          print("************************************");
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: .w700,
                          ),
                        ),
                        Text(
                          "Please sign up to get started",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: .w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      "assets/icons/Vector 142.svg",
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 275,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    spacing: 25,
                    children: [
                      CustomTextFieldWidget(
                        mainText: 'Name',
                        hintText: 'Mahmoid',
                      ),
                      CustomTextFieldWidget(
                        mainText: 'Email',
                        hintText: 'mahmoud@gamail.com',
                      ),
                      CustomTextFieldWidget(
                        mainText: 'Password',
                        hintText: '*******',
                        oscureText: true,
                      ),
                      CustomTextFieldWidget(
                        mainText: 'RE_Password',
                        hintText: '*****',
                        oscureText: true,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          minimumSize: Size(double.infinity, 62),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(20),
                          ),
                        ),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: .bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

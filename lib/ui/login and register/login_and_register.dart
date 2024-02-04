import 'package:eat_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../constants/string_contants.dart';
import '../../constants/ui_helper.dart';
import 'otp_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MiddleWare middleWare = MiddleWare();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            middleWare.putSizedBoxHeight(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                login_signup,
                style: middleWare.customTextStyle(24, Colors.black, FontWeight.w700),
              ),
            ),
            SizedBox(
              height: size.height * 0.45,
              child: Center(
                child: Image.asset(
                  'assets/images/delivery boy.png',
                  scale: 6,
                ),
              ),
            ),
            Center(child: Text("Your Seamiess Food", style: middleWare.customTextStyle(20, Colors.black, FontWeight.w700),),),
             Center(child: Text(" Delivery App", style: middleWare.customTextStyle(20, Colors.black, FontWeight.w700),),),
            middleWare.putSizedBoxHeight(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                     Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Log in or Sign up',
                        style: middleWare.customTextStyle(14, Colors.grey, FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            middleWare.putSizedBoxHeight(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1), // Border color
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          '+91',
                          style: middleWare.customTextStyle(18, Colors.black, FontWeight.w600),
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: SizedBox(
                          height: 40,
                          child: VerticalDivider(
                            width: 5,
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      middleWare.putSizedBoxWidth(5),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none, // No input field border
                            hintText: 'Enter phone number',
                            hintStyle: middleWare.customTextStyle(16, Colors.grey, FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            middleWare.putSizedBoxHeight(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const OTPPage()));
                },
                child: Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: primaryColor, // Make sure primaryColor is a List<Color>
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),child: Center(child: Text("Continue", style: middleWare.customTextStyle(18, Colors.white, FontWeight.w600),),),
                ),
              ),
            ),
            middleWare.putSizedBoxHeight(30),
            const Center(
              child: Text(
                "By clicking, I accept the terms of service and privacy policy",
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

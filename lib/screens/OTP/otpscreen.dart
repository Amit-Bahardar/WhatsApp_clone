import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/UiHelper.dart';
import 'package:whatsapp_clone/screens/profile/profilescreen.dart';

class OTPscreen extends StatefulWidget {
  final String phonenumber;
  const OTPscreen({super.key, required this.phonenumber});

  @override
  State<OTPscreen> createState() => _OTPscreenState();
}

class _OTPscreenState extends State<OTPscreen> {
  final TextEditingController otp1controller = TextEditingController();
  final TextEditingController otp2controller = TextEditingController();
  final TextEditingController otp3controller = TextEditingController();
  final TextEditingController otp4controller = TextEditingController();
  final TextEditingController otp5controller = TextEditingController();
  final TextEditingController otp6controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            UiHelper.CustomText(
              text: "Verifying your number",
              height: 20,
              color: const Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
            const SizedBox(height: 30),
            UiHelper.CustomText(
              text: "You've tried to register +977${widget.phonenumber}",
              height: 14,
            ),
            UiHelper.CustomText(
              text: "recently. Wait before requesting an sms or a call.",
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "with your code. ", height: 14),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(
                    text: "Wrong number?",
                    height: 14,
                    color: const Color(0XFF00A884),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1controller),
                const SizedBox(width: 10),
                UiHelper.CustomContainer(otp2controller),
                const SizedBox(width: 10),
                UiHelper.CustomContainer(otp3controller),
                const SizedBox(width: 10),
                UiHelper.CustomContainer(otp4controller),
                const SizedBox(width: 10),
                UiHelper.CustomContainer(otp5controller),
                const SizedBox(width: 10),
                UiHelper.CustomContainer(otp6controller),
              ],
            ),
            const SizedBox(height: 30),
            UiHelper.CustomText(
              text: "Didn’t receive code?",
              height: 14,
              color: const Color(0XFF00A884),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()),
          );
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

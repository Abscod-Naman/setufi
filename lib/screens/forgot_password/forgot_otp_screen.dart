import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../signup_screen.dart';
import 'forgot_password_form.dart';

class ForgotOtp extends StatefulWidget {
  final phoneNumber;
  const ForgotOtp({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  State<ForgotOtp> createState() => _ForgotOtpState();
}

class _ForgotOtpState extends State<ForgotOtp> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF133386),
      body: Container(
        margin: EdgeInsets.only(top: height * 0.15),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forget Password?',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 30.0,
                left: 60.0,
                right: 60.0,
              ),
              child: Text(
                "OTP has been sent to +91 ${widget.phoneNumber}",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: height * 0.7,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: height * 0.08),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _textFieldOTP(first: true, last: false),
                                _textFieldOTP(first: false, last: false),
                                _textFieldOTP(first: false, last: false),
                                _textFieldOTP(first: false, last: true),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigator.of(context).pop();
                            },
                            child: Text(
                              "Resend OTP?",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: const Color(0xFF218DCB),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.1,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ForgotPasswordForm(),
                            ),
                          );
                        },
                        child: Container(
                          height: height * 0.06,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.only(left: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Text(
                            "Continue",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an Account? ",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          InkWell(
                            onTap: () {
                               Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Create Account",
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          )
                        ],
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

  ///OTP TextField
  _textFieldOTP({bool? first, last}) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.08,
      width: width * 0.15,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          autofocus: false,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: const Color(0xFF757575),
          ),
          cursorColor: const Color(0xFF7E898E),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Color(0xFF7E898E),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:setufi/common/appColors.dart';
import 'package:setufi/common/constants.dart';
import 'forgot_password/forgot_password.dart';
import 'loading_page.dart';
import 'signup_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isPasswordObscured = true;
  String password = '';
  String email = '';
  //Form Key
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
              "Let's Get Started",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
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
                  child: ListView(
                    children: [
                      Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 30,
                                left: 30,
                              ),
                              child: Text(
                                "Enter your Email ID",
                                style: GoogleFonts.montserrat(
                                  color: const Color(0xFF2F2E41),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              padding: const EdgeInsets.only(left: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color(0xFF2F2E41),
                                ),
                              ),
                              child: TextFormField(
                                autofocus: false,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a valid email id';
                                  }
                                  return null;
                                },
                                onChanged: (val) {
                                  setState(() {
                                    email = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "lorium@ipsum.com",
                                  hintStyle: kHintTextStyle,
                                ),
                                cursorColor: const Color(0xFF2F2E41),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 30,
                                left: 30,
                              ),
                              child: Text(
                                "Password",
                                style: GoogleFonts.montserrat(
                                  color: const Color(0xFF2F2E41),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              padding: const EdgeInsets.only(left: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color(0xFF2F2E41),
                                ),
                              ),
                              child: TextFormField(
                                autofocus: false,
                                obscureText: isPasswordObscured,
                                validator: (value) {
                                  if (value!.isEmpty && value.length >= 8) {
                                    return 'Password must be at least 8 characters';
                                  }
                                  return null;
                                },
                                onChanged: (val) {
                                  setState(() {
                                    password = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isPasswordObscured =
                                            !isPasswordObscured;
                                      });
                                    },
                                    child: isPasswordObscured
                                        ? const Icon(
                                            Icons.visibility_off_outlined,
                                            color: Color(0xFF7A7A7A),
                                            size: 20,
                                          )
                                        : Icon(
                                            Icons.visibility_outlined,
                                            color:
                                                Theme.of(context).primaryColor,
                                            size: 20,
                                          ),
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Enter password",
                                  hintStyle: kHintTextStyle,
                                ),
                                cursorColor: const Color(0xFF2F2E41),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPassword(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Forget Password ?",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.validGreen,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const LoadingPage(),
                              ),
                              (route) => false);
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
}

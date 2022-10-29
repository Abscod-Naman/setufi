import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../signup_screen.dart';
import 'end_page.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  bool isPasswordObscured = true;
  bool isConfirmPasswordObscured = true;
  String password = '';
  String confirmPassword = '';
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
              'You can create a New Password now.',
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
                                "Enter New Password",
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
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
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
                                  hintStyle:
                                      Theme.of(context).textTheme.bodySmall,
                                ),
                                cursorColor: const Color(0xFF2F2E41),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                                left: 30,
                              ),
                              child: Text(
                                "Re-enter new password",
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
                                obscureText: isConfirmPasswordObscured,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty && value.length >= 8) {
                                    return 'Password must be at least 8 characters';
                                  }
                                  return null;
                                },
                                onChanged: (val) {
                                  setState(() {
                                    confirmPassword = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isConfirmPasswordObscured =
                                            !isConfirmPasswordObscured;
                                      });
                                    },
                                    child: isConfirmPasswordObscured
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
                                  hintText: "Re-enter password",
                                  hintStyle:
                                      Theme.of(context).textTheme.bodySmall,
                                ),
                                cursorColor: const Color(0xFF2F2E41),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        "* Password must contain atleast 8 characters",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF7A7A7A),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const EndPage(),
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

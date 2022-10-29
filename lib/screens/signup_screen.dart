import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:setufi/screens/otp_screen.dart';
import '../common/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String password = '';
  String name = '';
  String email = '';
  String phoneNumber = '';
  String referralCode = '';
  bool isChecked = false;
  bool isPasswordObscured = true;
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
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    height: height * 0.8,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                      color: Colors.white,
                    ),
                    child: ListView(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name",
                                    style: GoogleFonts.montserrat(
                                      color: const Color(0xFF2F2E41),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "*",
                                    style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFFFB0808),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 20,
                                ),
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
                                      return 'Please enter your name';
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    setState(() {
                                      name = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter Name",
                                    hintStyle: kHintTextStyle,
                                  ),
                                  cursorColor: const Color(0xFF2F2E41),
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mobile No.",
                                    style: GoogleFonts.montserrat(
                                      color: const Color(0xFF2F2E41),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "*",
                                    style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFFFB0808),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 20,
                                ),
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
                                  maxLength: 10,
                                  keyboardType: TextInputType.number,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    if (value!.isEmpty && value.length == 10) {
                                      return 'Please enter your mobile number';
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    setState(() {
                                      phoneNumber = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    counterText: '',
                                    border: InputBorder.none,
                                    prefix: const Text('+91 '),
                                    prefixStyle:
                                        Theme.of(context).textTheme.bodySmall,
                                    hintText: "Enter Mobile Number",
                                    hintStyle: kHintTextStyle,
                                  ),
                                  cursorColor: const Color(0xFF2F2E41),
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Email ID",
                                    style: GoogleFonts.montserrat(
                                      color: const Color(0xFF2F2E41),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "*",
                                    style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFFFB0808),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 20,
                                ),
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
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Password",
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFF2F2E41),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "*",
                                        style: GoogleFonts.poppins(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFFFB0808),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10,
                                    ),
                                    child: Text(
                                      " Password must be atleast 8 characters",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF7A7A7A)),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 20,
                                ),
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
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                "Referral Code (Optional)",
                                style: GoogleFonts.montserrat(
                                  color: const Color(0xFF2F2E41),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 20,
                                ),
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
                                      return 'Please enter your referral code';
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    setState(() {
                                      name = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter Code",
                                    hintStyle: kHintTextStyle,
                                  ),
                                  cursorColor: const Color(0xFF2F2E41),
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: isChecked,
                                activeColor: Theme.of(context).primaryColor,
                                checkColor: Colors.white,
                                onChanged: (val) {
                                  setState(() {
                                    isChecked = val!;
                                  });
                                }),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "By clicking this checkbox, you agree to our Terms & Conditions",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => const OtpScreen(),
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
                              "Already have an Account? ",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Log In",
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
      ),
    );
  }
}

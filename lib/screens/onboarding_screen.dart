import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../common/constants.dart';
import 'login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

final _controller = PageController(initialPage: 0);
int _currentPage = 0;
List<Widget> _pages = [
  Column(
    children: [
      Expanded(
        child: SvgPicture.asset("assets/images/onboarding01.svg"),
      ),
      Text(
        "Grow your Business with Setufi Your Cashflow Management System",
        style: kPageViewTitleTextStyle,
        textAlign: TextAlign.center,
      ),
    ],
  ),
  Column(
    children: [
      Expanded(
        child: SvgPicture.asset("assets/images/onboarding02.svg"),
      ),
      Text(
        "Always know what’s next",
        style: kPageViewTitleTextStyle,
        textAlign: TextAlign.center,
      ),
    ],
  ),
  Column(
    children: [
      Expanded(
        child: SvgPicture.asset("assets/images/onboarding03.svg"),
      ),
      Text(
        "Get more done in seconds",
        style: kPageViewTitleTextStyle,
        textAlign: TextAlign.center,
      ),
    ],
  ),
];

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          SvgPicture.asset("assets/images/setufi_big.svg"),
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _controller,
                  children: _pages,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                ),
                Positioned(
                  bottom: 60,
                  left: 135,
                  child: DotsIndicator(
                    dotsCount: _pages.length,
                    position: _currentPage.toDouble(),
                    decorator: DotsDecorator(
                      color: const Color(0xFFE2E6ED),
                      activeColor: const Color(0xFFB1BBCE),
                      size: const Size.square(10),
                      activeSize: const Size(20, 10),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogInScreen(),
                    ),
                    (_) => false,
                  );
                },
                child: Container(
                  height: height * 0.06,
                  width: width * 0.7,
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text(
                    "Let's Get Started",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/images/wth.svg',
              ),
            ],
          ),
          SizedBox(
            height: height * 0.1,
          ),
        ],
      ),
    );
  }
}

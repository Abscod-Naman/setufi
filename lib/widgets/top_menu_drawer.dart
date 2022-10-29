import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopMenuDrawer extends StatefulWidget {
  const TopMenuDrawer({Key? key}) : super(key: key);

  @override
  State<TopMenuDrawer> createState() => _TopMenuDrawerState();
}

class _TopMenuDrawerState extends State<TopMenuDrawer> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        children: [
          Container(
            height: height * 0.08,
            width: width * 0.2,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF7A7A7A),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/invoice_drawer.png",
                  height: height * 0.05,
                ),
                Text(
                  "Invoices",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.08,
            width: width * 0.2,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF7A7A7A),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/purchase_drawer.png",
                  height: height * 0.05,
                ),
                Text(
                  "Purchases",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.08,
            width: width * 0.2,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF7A7A7A),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/inventory_drawer.png",
                  height: height * 0.05,
                ),
                Text(
                  "Inventory",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.08,
            width: width * 0.2,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF7A7A7A),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/incentives_drawer.png",
                  height: height * 0.05,
                ),
                Text(
                  "Incentives",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

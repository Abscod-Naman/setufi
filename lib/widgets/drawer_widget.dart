import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'top_menu_drawer.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        height: height,
        width: width * 0.8,
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            const TopMenuDrawer(),
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF7A7A7A),
                ),
              ),
              child: ListTile(
                onTap: () {},
                title: Text(
                  'Dashboard',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.widgets_outlined,
                    color: Theme.of(context).iconTheme.color),
                focusColor: Theme.of(context).primaryColor,
                hoverColor: Theme.of(context).primaryColor,
                mouseCursor: MaterialStateMouseCursor.clickable,
                selectedTileColor: Colors.grey,
              ),
            ),
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF7A7A7A),
                ),
              ),
              child: ListTile(
                onTap: () {},
                title: Text(
                  'Collection Summary',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.collections_bookmark_outlined,
                    color: Theme.of(context).iconTheme.color),
                focusColor: Theme.of(context).primaryColor,
                hoverColor: Theme.of(context).primaryColor,
                mouseCursor: MaterialStateMouseCursor.clickable,
                selectedTileColor: Colors.grey,
              ),
            ),
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF7A7A7A),
                ),
              ),
              child: ListTile(
                onTap: () {},
                title: Text(
                  'Invoices',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.article_outlined,
                    color: Theme.of(context).iconTheme.color),
                focusColor: Theme.of(context).primaryColor,
                hoverColor: Theme.of(context).primaryColor,
                mouseCursor: MaterialStateMouseCursor.clickable,
                selectedTileColor: Colors.grey,
              ),
            ),
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF7A7A7A),
                ),
              ),
              child: ListTile(
                onTap: () {},
                title: Text(
                  'Purchases',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.sell_outlined,
                    color: Theme.of(context).iconTheme.color),
                focusColor: Theme.of(context).primaryColor,
                hoverColor: Theme.of(context).primaryColor,
                mouseCursor: MaterialStateMouseCursor.clickable,
                selectedTileColor: Colors.grey,
              ),
            ),
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF7A7A7A),
                ),
              ),
              child: ListTile(
                onTap: () {},
                title: Text(
                  'Inventory',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.inventory_2_outlined,
                    color: Theme.of(context).iconTheme.color),
                focusColor: Theme.of(context).primaryColor,
                hoverColor: Theme.of(context).primaryColor,
                mouseCursor: MaterialStateMouseCursor.clickable,
                selectedTileColor: Colors.grey,
              ),
            ),
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF7A7A7A),
                ),
              ),
              child: ListTile(
                onTap: () {},
                title: Text(
                  'Incentives',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.percent_outlined,
                    color: Theme.of(context).iconTheme.color),
                focusColor: Theme.of(context).primaryColor,
                hoverColor: Theme.of(context).primaryColor,
                mouseCursor: MaterialStateMouseCursor.clickable,
                selectedTileColor: Colors.grey,
              ),
            ),
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF7A7A7A),
                ),
              ),
              child: ListTile(
                onTap: () {},
                title: Text(
                  'Account Managers',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.group_outlined,
                    color: Theme.of(context).iconTheme.color),
                focusColor: Theme.of(context).primaryColor,
                hoverColor: Theme.of(context).primaryColor,
                mouseCursor: MaterialStateMouseCursor.clickable,
                selectedTileColor: Colors.grey,
              ),
            ),
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF7A7A7A),
                ),
              ),
              child: ListTile(
                onTap: () {},
                title: Text(
                  'Log Out',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.power_settings_new_outlined,
                    color: Theme.of(context).iconTheme.color),
                focusColor: Theme.of(context).primaryColor,
                hoverColor: Theme.of(context).primaryColor,
                mouseCursor: MaterialStateMouseCursor.clickable,
                selectedTileColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Powered by",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                    width: width * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("assets/images/capital_setu.png")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

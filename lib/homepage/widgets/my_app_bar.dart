import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey[800],
              size: 20,
            ),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Text(
            'Explore',
            style: GoogleFonts.nunito(
              color: Colors.grey[800],
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite_outline_rounded,
                color: Colors.grey[800],
                size: 20,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.place,
                color: Colors.grey[800],
                size: 20,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

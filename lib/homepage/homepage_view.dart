import 'package:flutter/material.dart';
import 'package:hotels/homepage/widgets/bottom_bar_section.dart';
import 'package:hotels/homepage/widgets/hotel_section.dart';
import 'package:hotels/homepage/widgets/my_app_bar.dart';
import 'package:hotels/homepage/widgets/search_section.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            HotelSection(),

          ],
        ),
      ),
      bottomNavigationBar: BottomBarSection(),
    );
  }
}

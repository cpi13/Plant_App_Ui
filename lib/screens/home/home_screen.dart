import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/components/my_bottom_nav_bar.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:buildAppBar(),
      body: const Body(),
      bottomNavigationBar:const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon : SvgPicture.asset("assets/icons/menu.svg",),
        onPressed: (){},

      ),
    );
  }
}



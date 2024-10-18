import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/home/components/body.dart';
import 'package:plant_app_ui/screens/home/components/featured_plants.dart';
import 'package:plant_app_ui/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app_ui/screens/home/components/recommend_plants.dart';
import 'package:plant_app_ui/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width of screen
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {},),
          const RecommendPlants( ),
          TitleWithMoreBtn(title: "Featured Plants",press: (){}),
          const FeaturedPlant(),
          const SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

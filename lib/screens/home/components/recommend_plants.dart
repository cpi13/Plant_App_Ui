import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/details/details_screen.dart';
class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Smantha",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(),)
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),)
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Smantha",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),)
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,

  }) : super(key: key);

  final String image,title,country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(image),
            GestureDetector(
              onTap:(){
            press();
              },
              child: Container(
                padding: const EdgeInsets.all(kDefaultPadding / 4),
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),

                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ]),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button),
                          TextSpan(
                              text: "$country".toUpperCase(),
                              style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5)))
                        ],
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$$price",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: kPrimaryColor),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

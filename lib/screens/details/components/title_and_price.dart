import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

class TItleAndPrice extends StatelessWidget {
  const TItleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);
  final String title,country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(text: TextSpan(
              children: [
                TextSpan(text: "$title\n",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: kTextColor,fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text: country,
                    style: const TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300)
                )
              ]
          )
          ),
          const Spacer(),
          Text("\Rs.$price",style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(
              color: kPrimaryColor
          ),)
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/details/components/image_and_icons.dart';
import 'package:plant_app_ui/screens/details/components/title_and_price.dart';
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TItleAndPrice(title: "Radha", country: "India", price: 440,),
          const SizedBox(height:kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width /2 ,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius:BorderRadius.only(
                        topRight: Radius.circular(20),
                      )
                    )
                  ),
                  onPressed: () {  },
                  child: const Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 16),),

                ),
              ),
              Expanded(
                  child: TextButton(
                    onPressed: () {  },
                    child: const Text("Description",style: TextStyle(color: Colors.black,fontSize: 16),),
                  )
              )
            ],
          ),
          // SizedBox(height: kDefaultPadding * 2)
        ],
      ),
    );
  }
}




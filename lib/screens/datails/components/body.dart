import 'package:flutter/material.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/models/product.dart';
import 'package:menu_app/screens/datails/components/add_to_cart.dart';
import 'package:menu_app/screens/datails/components/color_and_size.dart';
import 'package:menu_app/screens/datails/components/counter_with_fav_btn.dart';
import 'package:menu_app/screens/datails/components/description.dart';
import 'package:menu_app/screens/datails/components/product_title_with_image.dart';
class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    //It provide us total height and width
    Size size = MediaQuery.of(context).size; 
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // we will fixed it later
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height *0.3),
                  padding: EdgeInsets.only(
                    top: size.height *0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    ),
                  //height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                    ),
                  ),
                  child:
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        ColorAndSize(product: product),
                        SizedBox(height: kDefaultPadding/2),
                        Description(product: product),
                        SizedBox(height: kDefaultPadding/2),
                        CounterWithFavBtn(),
                        SizedBox(height: kDefaultPadding/2),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                ),
                productTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/models/product.dart';
  import 'package:menu_app/screens/datails/components/body.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/Backwards.svg",
          // ignore: deprecated_member_use
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);

        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // ignore: deprecated_member_use
            color: Colors.white,
          ),
          onPressed: () {},
        ),
              IconButton(
          icon: SvgPicture.asset(
            "assets/icons/shopping.svg",
            // ignore: deprecated_member_use
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
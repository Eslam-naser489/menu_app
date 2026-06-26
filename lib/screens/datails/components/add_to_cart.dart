import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/store.svg",
              // ignore: deprecated_member_use
              color: product.color,
              ),
              onPressed: (){},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
            child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: product.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      onPressed: () {},
      child: Text(
        "Add to Cart".toUpperCase(),
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
            ),
          ),
        ],
      ),
    );
  }
}


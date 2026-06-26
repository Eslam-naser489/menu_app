import 'package:flutter/material.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/models/product.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("color"),
        Row(
          children: <Widget>[
        ColorDot(color: Color(0xFF356C95),
        isSelected: true,
        ),
        ColorDot(color: Color(0xFFF8C078),),
        ColorDot(color: Color(0xFFA29B9B),),
          ],
        ),
          Expanded(
            child: RichText( 
                                text:TextSpan(
                                  style: TextStyle(color: kTextColor),
                                children: [
                                TextSpan(text: "size",
                                ),
                                TextSpan(
                                text: "${product.size} calories",
                                style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                ],
                                ),
                                ),
          ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key, required this.color, this.isSelected=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top:kDefaultPadding/4,
        right: kDefaultPadding/2,
        ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:isSelected? color:Colors.transparent,
          ),
          ),
          child: DecoratedBox(
            decoration:BoxDecoration(
            color:color,
            shape: BoxShape.circle,
            ),
            ),
    );
  }
}

// ignore: camel_case_types

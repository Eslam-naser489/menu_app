import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:menu_app/screens/datails/components/cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0XFFFF6464),
            shape: BoxShape.circle,
        ),
          child:SvgPicture.asset("assets/icons/heart.svg") ,
        ),
      ],
    );
  }
}

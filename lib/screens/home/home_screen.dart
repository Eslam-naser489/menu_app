import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/components/body.dart';
import 'package:menu_app/models/product.dart';

class HomeScreen extends StatelessWidget {
  Product get product => products[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading:IconButton(
      icon: SvgPicture.asset('assets/icons/Backwards.svg'),
      onPressed: (){},
    ) ,
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
        //by default our icon color is white
      // ignore: deprecated_member_use
      color:kTextColor ,
        ),
        onPressed: (){},
      ) ,
      
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/shopping.svg',
        //by default our icon color is white
      // ignore: deprecated_member_use
      color:kTextColor ,
        ),
        onPressed: (){},
      ),
      SizedBox(width: kDefaultPadding / 2)
    ],
    );
  }
}
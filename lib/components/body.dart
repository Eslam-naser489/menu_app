import 'package:flutter/material.dart';
import 'package:menu_app/components/categorries.dart';
import 'package:menu_app/components/item_card.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/models/product.dart';
import 'package:menu_app/screens/datails/details_screen.dart';


class Body extends StatelessWidget {
  const Body({super.key, required Product product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "menu app ",
          style: Theme.of(context)
          .textTheme
          .titleLarge
          !.copyWith(fontWeight: FontWeight.bold)
          ),
        ),
      Categories(),
      Expanded(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
            itemCount: products.length,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
            childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCard (
            
            product: products[index], 
            
            press: ()=>Navigator .push(
              context,
              MaterialPageRoute(
                builder: (context)=> DetailsScreen(
              product: products[index],
              ),
              ),),
                )
                ),
            ),
        ),
  
      ],
    );
  }
}


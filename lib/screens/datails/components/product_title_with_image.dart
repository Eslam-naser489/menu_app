import 'package:flutter/material.dart';
import 'package:menu_app/constants.dart';
import 'package:menu_app/models/product.dart';


// ignore: camel_case_types
class productTitleWithImage extends StatelessWidget {
  const productTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Smart Wristwatch",
          style: TextStyle(color: Colors.white),
          ),
          Text(product.title,
          style: Theme.of(context)
          .textTheme
          .headlineMedium 
          ?.copyWith(
          color:Colors.white, fontWeight:FontWeight.bold),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
          children:<Widget> [
            RichText(
              text: TextSpan(
              children: [
              TextSpan(text: "price\n"),
              TextSpan(text:"\$${product.price}",
              style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(
                color: Colors.white,
                fontWeight:FontWeight.bold ,
                ),
              ),
            ],
            ),
            ),
            // appdated image
            SizedBox(width: kDefaultPadding),
            Expanded(child: Hero(
              tag: "${product.id}",
              child: Image.asset(
                product.image,
                fit: BoxFit.fill,
                
                ),
            ),
            )
          ],                    
          )
        ],
      ),
    );
  }
}

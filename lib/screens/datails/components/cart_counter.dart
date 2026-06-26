import 'package:flutter/material.dart';
import 'package:menu_app/constants.dart';


class CartCounter extends StatefulWidget {
  const CartCounter({super.key});
  @override
  State<CartCounter> createState() => _CartCounterState();
}
class _CartCounterState extends State<CartCounter> {
  int numOfItems=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(icon: Icons.remove, press: () {
            setState(() {
              if(numOfItems>1){
                numOfItems--;
              }
            });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
          child: Text(numOfItems.toString().padLeft(2, "0"),
          style: Theme.of(context).textTheme.headlineMedium,),
        ),
        buildOutlineButton(icon: Icons.add, press: () {
            setState(() {
              numOfItems++;
            });
        }),
        
      ],
    );
  }
}
SizedBox buildOutlineButton({ required IconData icon,  required VoidCallback press}) {
  return SizedBox(
    width: 40,
    height: 32,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      onPressed: press, // كده الـ press بقت متعرفة فوق في الـ parameters
      child: Icon(icon), // كده الـ icon بقت الـ variable اللي بنمرره
    
    ),
  );
}

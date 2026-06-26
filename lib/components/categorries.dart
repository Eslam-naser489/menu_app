import 'package:flutter/material.dart';
import 'package:menu_app/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Categories createState() => _Categories();
}

class _Categories extends State<Categories> {
  List<String> categories = ["Pizza","Burgers","crepe","Hawawwshi"];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount:categories.length,
            itemBuilder: (context, index) => bulidCategory(index),
        ),
      ),
    );
  }

  Widget bulidCategory(int index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },

          child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? kTextColor : KTextLightColor ,
                ),
              ),
              Container(
                margin:EdgeInsets.only(top: kDefaultPadding/4) ,
                height: 2,
                width: 30,
                color: selectedIndex == index ? Colors.black : Colors.transparent,
              )
          ],
                ),
              ),
        );
  }
}
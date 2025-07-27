import 'package:flutter/material.dart';
import 'package:grocery_app/screens/product_details_screen.dart';


class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kTextColor),
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, Function? press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
          backgroundColor: Colors.green,   //  replaces `color`
          foregroundColor: Colors.white,   // text/icon color
          shape: CircleBorder(),
          padding: EdgeInsets.all(12),
  ),
  child: Text("+"),  
      ),
    );
  }
}

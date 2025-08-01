import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/model/product.dart';
import 'package:grocery_app/util/shopping_colors.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery
        .of(context)
        .size
        .width;
    return Row(
      children: <Widget>[
        Container(
          height: 50,
          width: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: shrineGreen400,
            ),
          ),
          child: IconButton(
            icon: SvgPicture.asset(
              "shopping_assets/icons/add_to_cart.svg",
              colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn), 
            ),
            onPressed: () {},
          ),
        ),
        Flexible(
          child: Container(
            height: 50,
            width: w * 0.5,
            margin: EdgeInsets.symmetric(horizontal: w * 0.2),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Buy  Now".toUpperCase(),
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
    );
  }
}

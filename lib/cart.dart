import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Cart extends StatelessWidget {
  final String price;
  final String name;
  final String measurement;
  final ImageProvider image;

  const Cart(
      {@required this.name,
      @required this.measurement,
      @required this.price,
      @required this.image});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 160.0,
          width: 170.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.fill,
            ),
            color: Colors.black,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5F467E),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5F467E),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '€ / ',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFF5F467E),
                  ),
                ),
                Text(
                  measurement,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFF5F467E),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: Icon(FeatherIcons.heart),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 50.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Icon(
                    FeatherIcons.shoppingCart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'box.dart';
import 'cart.dart';

class UiDesign extends StatefulWidget {
  @override
  _UiDesignState createState() => _UiDesignState();
}

class _UiDesignState extends State<UiDesign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF6F5F5),
        body: SingleChildScrollView(
          child: Container(
            //margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
            margin: EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/topdesign.png'),
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.bottomRight,
                    ),
                    //color: Color(0xFFCBF265),
                    color: Color(0xFFF6F5F5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 35.0,
                      ),
                      Icon(
                        FeatherIcons.chevronLeft,
                        size: 30.0,
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        'Vegetables',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36.0,
                          color: Color(0xFF2D0C57),
                        ),
                      ),
                    ],
                  ),
                ),

                //SizedBox(
                // height: 30.0,
                // ),
                Container(
                  margin: EdgeInsets.only(right: 15.0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: 'Search',
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      prefixIcon: Icon(
                        FeatherIcons.search,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Container(
                          height: 50.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFE2CBEF),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 15.0,
                              ),
                              Icon(
                                FeatherIcons.check,
                                size: 28.0,
                                color: Color(0xFF893DEB),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'Cabbage and lettuce(14)',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Color(0xFF893DEB),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Box(
                        textName: 'Cucumbers and Tomato',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Box(
                        textName: 'Oinons and garlic(8)',
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Box(textName: 'Peppers(7)'),
                      SizedBox(
                        width: 15.0,
                      ),
                      Box(textName: 'Potatoes and Cauliflower'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Cart(
                  name: 'Boston Lettuce',
                  price: '1.85',
                  measurement: 'kg',
                  image: AssetImage('images/boston.jpg'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Cart(
                  name: 'Purple Cauliflower',
                  price: '1.10',
                  measurement: 'piece',
                  image: AssetImage('images/purplecauliflower.jpg'),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Cart(
                  name: 'Savoy Cabbage',
                  price: '1.45',
                  measurement: 'kg',
                  image: AssetImage('images/savoycabbage.jpg'),
                ),
              ],
            ),
          ),
        ),
        persistentFooterButtons: <Widget>[
          Container(
            height: 60.0,
            child: Row(
              children: <Widget>[
                Icon(
                  //Icons.border_all,
                  FeatherIcons.grid,
                  color: Colors.purple,
                  size: 30.0,
                ),
                SizedBox(
                  width: 115.0,
                ),
                Icon(
                  FeatherIcons.shoppingCart,
                  size: 30.0,
                  //color: Colors.white10,
                ),
                SizedBox(
                  width: 120.0,
                ),
                Icon(
                  FeatherIcons.user,
                  size: 30.0,
                  //color: Colors.white,
                ),
                SizedBox(
                  width: 30.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:farmer_ecomerce_app/widjets/cuts_widget.dart';
import 'package:farmer_ecomerce_app/widjets/exotic_widget.dart';
import 'package:farmer_ecomerce_app/widjets/fruit_widget.dart';
import 'package:farmer_ecomerce_app/widjets/home_widget.dart';
import 'package:farmer_ecomerce_app/widjets/nutrition_widget.dart';
import 'package:farmer_ecomerce_app/widjets/offer_widget.dart';
import 'package:farmer_ecomerce_app/widjets/packed.dart';
import 'package:farmer_ecomerce_app/widjets/salad.dart';
import 'package:farmer_ecomerce_app/widjets/subscription.dart';
import 'package:farmer_ecomerce_app/widjets/veg_widget.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Row(
            children: [
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage('images/logo.png'),
                height: 30,
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.green)),
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
          title: Row(
            children: [
              SizedBox(
                width: 70,
              ),
              Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              Text(
                'Kochi',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.green,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 60,
                    child: Tab(
                      child: Row(children: [
                        Text('Home'),
                        SizedBox(
                          width: 5,
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Tab(child: Text('Offers')),
                  ),
                  Container(
                    width: 80,
                    child: Tab(child: Text('Vegitables')),
                  ),
                  Container(
                    width: 60,
                    child: Tab(child: Text('Fruits')),
                  ),
                  Container(
                    width: 60,
                    child: Tab(child: Text('Exotic')),
                  ),
                  Container(
                    width: 60,
                    child: Tab(child: Text('Frush cuts')),
                  ),
                  Container(
                    width: 80,
                    child: Tab(child: Text('Nutrition charges')),
                  ),
                  Container(
                    width: 60,
                    child: Tab(child: Text('Packed flavors')),
                  ),
                  Container(
                    width: 80,
                    child: Tab(child: Text('Gourment salads')),
                  ),
                  Container(
                    width: 110,
                    child: Tab(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            height: 25,
                            width: 110,
                            child: Center(
                              child: Text(
                                'Subscription',
                                style: TextStyle(color: Colors.green),
                              ),
                            ))),
                  )
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: TabBarView(children: [
                  home_widget(),
                  offer_widget(),
                  veg_widget(),
                  fruits_widget(),
                  exotic_widget(),
                  cuts_widget(),
                  nutrition_widget(),
                  packed_widget(),
                  gourment_widget(),
                  sub_widget()
                ]))
          ],
        ),
      ),
    );
  }
}

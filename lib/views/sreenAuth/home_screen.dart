import 'package:flutter/material.dart';
import 'package:mvc_apps/models/product_model.dart';

import '../utils/colors.dart';
import 'auth_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> products = [
    Product(
      imageUrl: 'assets/images/girl.png',
      title: 'T-Shirt Sailing',
      price: 10,
      rating: 4,
    ),
    Product(
      imageUrl: 'assets/images/boy.png',
      title: 'Blue Jeans',
      price: 25,
      rating: 5,
    ),
    Product(
      imageUrl: 'assets/images/boy.png',
      title: 'Casual Shoes',
      price: 15,
      rating: 3,
    ),
  ];
  List<Product> sale = [
    Product(
      imageUrl: 'assets/images/girl2.png',
      title: 'Evening Dress',
      price: 12,
      rating: 4,
    ),
    Product(
      imageUrl: 'assets/images/girl3.png',
      title: 'Short Dress',
      price: 19,
      rating: 5,
    ),
    Product(
      imageUrl: 'assets/images/girl4.png',
      title: 'Short Dress',
      price: 15,
      rating: 3,
    ),
  ];
  List<Product> New = [
    Product(
      imageUrl: 'assets/images/girl5.png',
      title: 'Blouse Dress',
      price: 30,
      rating: 4,
    ),
    Product(
      imageUrl: 'assets/images/boy.png',
      title: 'T-Shirt Sailing',
      price: 19,
      rating: 5,
    ),
    Product(
      imageUrl: 'assets/images/boy.png',
      title: 'Jeans ',
      price: 45,
      rating: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var view = AuthWidget(context: context);
    final Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              height: screenSize.height / 1.8,
              width: double.infinity,
              child: Stack(
                children: [
                  // Background big banner image
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/BigBanner.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Content overlay on top of the big banner image
                  Positioned(
                    bottom: screenSize.height * 0.05,
                    left: screenSize.width * 0.05,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        view.appTextView("Fashion", fontSize: screenSize.width * 0.08),
                        SizedBox(height: screenSize.height * 0.01),
                        view.appTextView("Sale", fontSize: screenSize.width * 0.08),
                        SizedBox(height: screenSize.height * 0.01),
                        view.chekbotm("Check", onPressed: () {}, color: edugoan, width: screenSize.width * 0.3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Horizontal list of products
            Container(
              height: 320, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: view.productWidget(products[index]),
                  );
                },
              ),
            ),
            Container(
              height: screenSize.height / 3.8,
              width: double.infinity,
              child: Stack(
                children: [
                  // Background big banner image
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/Smallbanner.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Content overlay on top of the big banner image
                  Positioned(
                    bottom: screenSize.height * 0.03,
                    left: screenSize.width * 0.05,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        view.appTextView("Street clothes", fontSize: screenSize.width * 0.1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  view.appTextView("Sale", fontSize: 40, color: Colors.black),
                  view.appTextView("Super summer sale", fontSize: 20, color: Colors.black),
                ],
              ),
            ),
            Container(
              height: 320, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sale.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: view.productWidget(sale[index]),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  view.appTextView("New", fontSize: 40, color: Colors.black),
                  view.appTextView("You've never seen it before!", fontSize: 20, color: Colors.black),
                ],
              ),
            ),
            Container(
              height: 320, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: New.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: view.productWidget(New[index]),
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.white,
                        height: screenSize.height / 4,
                        width: screenSize.width / 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              view.appTextView("Summer",fontSize: 30,color: Colors.red),
                              view.appTextView("sale",fontSize: 30,color: Colors.red),
                            ],
                          ),
                        )
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: screenSize.height / 4,
                        width: screenSize.width / 2,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.asset(
                                "assets/images/girl6.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: view.appTextView("Black", fontSize: screenSize.width * 0.1, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: screenSize.height / 2,
                    width: screenSize.width / 2,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            "assets/images/manhoodis.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

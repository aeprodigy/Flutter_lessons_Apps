// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:les_09/utils/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            //appBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Swift",
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Wallet",
                        style: TextStyle(fontSize: 28.0),
                      ),
                    ],
                  ),
                  //plus button icon
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 30000,
                    cardNumber: 12345678,
                    expiryMonth: 11,
                    expiryYear: 22,
                    color: Colors.red[400],
                  ),
                  MyCard(
                    balance: 20000,
                    cardNumber: 68345678,
                    expiryMonth: 10,
                    expiryYear: 21,
                    color: Colors.green[400],
                  ),
                  //MyCard(),
                  MyCard(
                    balance: 20000,
                    cardNumber: 68545678,
                    expiryMonth: 09,
                    expiryYear: 22,
                    color: Colors.yellow[400],
                  ),
                ],
              ),
            ),
            SizedBox(height:25),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade600
              ),
            ),
            SizedBox(height: 25),
            //3 buttons -> send +pay + bills
              Row(
                children: [
                  //send button
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(12),
                    decoration:BoxDecoration(color: Colors.white) ,
                    child: Center(
                      child:Image.asset('lib/assets/icons/send-money.png')
                    ),
                  )
                  //pay button

                  //bills button
                ],
              )
            //column -> stats + transactions
          ],
        ),
      ),
    );
  }
}

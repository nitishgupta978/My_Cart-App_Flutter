// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_app/cart_items.dart';

import 'package:my_app/pay_button.dart';

import 'my_appbar.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: Stack(
        children: [
          const MyAppBar(),
          const CartItemListWidget(),
          Align(
            alignment: Alignment.bottomCenter,
            child: PayButton(
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

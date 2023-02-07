// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_app/constants.dart';

class CartItemListWidget extends StatelessWidget {
  const CartItemListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cartItems = [
      CartItem(
          name: "Apple juice",
          description: "Lorem ipsum ipsum dolor sit emet",
          price: "\$8.65",
          quantity: 1),
      CartItem(
          name: "Banana juice",
          description: "Spicy test like good",
          price: "\$18.65",
          quantity: 2),
      CartItem(
          name: "Milk juice",
          description: "best juice in the world",
          price: "\$81.65",
          quantity: 10),
      CartItem(
          name: "Pinapple juice",
          description: "Lorem ipsum ipsum dolor sit emet",
          price: "\$118.65",
          quantity: 11),
    ];
    return Container(
      margin: const EdgeInsets.only(top: kMyAppBarHight),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade900,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CartItemWidget(itme: cartItems[index]);
        },
        itemCount: cartItems.length,
      ),
    );
  }
}

class CartItem {
  final String name;
  final String description;
  final String price;
  final int quantity;

  CartItem({
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
  });
}

class CartItemWidget extends StatelessWidget {
  final CartItem itme;
  const CartItemWidget({
    Key? key,
    required this.itme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  itme.name,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  itme.description,
                  style: const TextStyle(color: Colors.white30, fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  itme.price,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_circle_outline,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${itme.quantity}',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outline),
                    color: Colors.white,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

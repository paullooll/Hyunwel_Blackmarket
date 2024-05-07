// ignore_for_file: depend_on_referenced_packages

import 'package:app_dev/components/quantity.dart';
import 'package:app_dev/models/cart.dart';
import 'package:app_dev/models/martketplace.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget{
  final Cart cart;

  const MyCartTile({
    super.key, 
    required this.cart
  });

  @override
  Widget build(BuildContext context){
    return Consumer<Marketplace>(
      builder: (context, marketplace, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      cart.itemsForSale.imagePath,
                      height: 120,
                      width: 120,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cart.itemsForSale.name),
                      Text(
                        "${cart.itemsForSale.price}php",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary
                        ),
                      ),
                      
                      const SizedBox(height: 10),

                      QuantitySelector(
                        quantity: cart.quantity, 
                        itemsForSale: cart.itemsForSale, 
                        onDecrement: (){
                          marketplace.removeFromCart(cart);
                        }, 
                        onIncrement: (){
                          marketplace.addToCart(cart.itemsForSale);
                        }
                      ),
                    ],
                  ),

                  const Spacer(),
                ],
              ),
            )
          ]
        ),
      )
    );
  }
}
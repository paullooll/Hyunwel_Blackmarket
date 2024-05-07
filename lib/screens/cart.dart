import 'package:app_dev/components/button.dart';
import 'package:app_dev/components/cart_tile.dart';
import 'package:app_dev/models/martketplace.dart';
import 'package:app_dev/screens/payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context){
    return Consumer<Marketplace>(
      builder: (context, markeplace, child) {
        final userCart = markeplace.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: (){
                  showDialog(
                    context: context, 
                    builder: (context) => AlertDialog(
                      title: Text("Are you sure you want to clear your cart?"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context), 
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () { 
                            Navigator.pop(context); 
                            markeplace.clearCart();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                }, 
                icon: const Icon(Icons.delete),
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty 
                    ? const Expanded(
                      child: Center(
                        child: Text("Cart is empty..")
                      )
                    )
                    : Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          final cartItem = userCart[index];
                
                          return MyCartTile(cart: cartItem);
                        }
                      )
                    )
                  ],
                ),
              ),
              MyButton(
                text: "Go to checkout", 
                onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(), 
                  ),
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
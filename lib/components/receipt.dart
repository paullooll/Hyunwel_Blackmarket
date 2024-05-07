import 'package:app_dev/models/martketplace.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget{
  const MyReceipt({super.key});

  @override
  Widget build (BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  "Thank you for purchasing!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  border: 
                    Border.all(color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Consumer<Marketplace>(
                  builder: (context, marketplace, child) => 
                    Text(marketplace.displayReceipt()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
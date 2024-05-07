import 'package:app_dev/components/button.dart';
import 'package:app_dev/models/items.dart';
import 'package:app_dev/models/martketplace.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemPage extends StatefulWidget{
  final ItemsForSale item;

  const ItemPage({
    super.key,
    required this.item,
  });

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage>{

  void addToCart(ItemsForSale item){
    Navigator.pop(context);
    context.read<Marketplace>().addToCart(item);
  }

  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.item.imagePath),
            
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "${widget.item.price} php",
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),  
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.item.description2,
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),  
                      ),
            
                      const SizedBox(height: 10),
            
                      Divider(color: Theme.of(context).colorScheme.secondary),
            
                      const SizedBox(height: 10),
            
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MyButton(
                  text: "Confirm", 
                  onTap: () => addToCart(widget.item)
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),

        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 17),
              decoration: 
                BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle,
                ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.pop(context), 
              ),
            ),
          ),
        ),
      ],
    );
  }
}
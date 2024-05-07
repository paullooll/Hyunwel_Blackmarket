import 'package:flutter/material.dart';
import '../models/items.dart';

class ItemTile extends StatelessWidget {
  final ItemsForSale item;
  final void Function()? onTap;

  const ItemTile({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.name),
                      Text(
                        "${item.price} php",
                        style: TextStyle(color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item.description, 
                        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 15),

                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(item.imagePath, height: 120, width: 120)
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        ),
      ],
    );
  }
}
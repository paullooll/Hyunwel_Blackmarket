import 'package:flutter/material.dart';

class MyLocation extends StatelessWidget{
  const MyLocation({super.key});

  void openLocation(BuildContext context){
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text("Your Loocation"),
        content: const TextField(
          decoration: InputDecoration(hintText: "Search Address"),
        ),
       actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now!",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),  
          ),
          GestureDetector(
            onTap: () => openLocation(context),
            child: Row(
              children: [
                Text(
                  "Iloilo City",
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                  
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
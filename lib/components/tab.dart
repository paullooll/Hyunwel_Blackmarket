
// ignore_for_file: avoid_unnecessary_containers

import 'package:app_dev/models/items.dart';
import 'package:flutter/material.dart';


class MyTab extends StatelessWidget{
  final TabController tabController;

  const MyTab({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs(){
    return Categories.values.map((category){
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}
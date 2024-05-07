import 'package:app_dev/components/description.dart';
import 'package:app_dev/components/drawer.dart';
import 'package:app_dev/components/item_tile.dart';
import 'package:app_dev/components/location.dart';
import 'package:app_dev/components/sliver.dart';
import 'package:app_dev/components/tab.dart';
import 'package:app_dev/models/items.dart';
import 'package:app_dev/models/martketplace.dart';
import 'package:app_dev/screens/item_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
    with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: Categories.values.length, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  List<ItemsForSale> _filterByCategories(Categories category, List<ItemsForSale> fullList){
    return fullList.where((item) => item.category == category).toList();
  }

  List<Widget> getItemInCategory(List<ItemsForSale> fullList){
    return Categories.values.map((category){
      List<ItemsForSale> categoryMenu = _filterByCategories(category, fullList);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {

          final item = categoryMenu[index];
          
          return ItemTile(
            item: item, 
            onTap: () => Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => ItemPage(item: item),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliver(
            title: MyTab(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                const MyLocation(),

                const MyDescription(),
              ],
            )
          ),
        ],
        body: Consumer<Marketplace>(builder: (context, marketplace, child) => TabBarView(
          controller: _tabController,
          children: getItemInCategory(marketplace.order),
          ),
        )
      ),
    );
  }
}
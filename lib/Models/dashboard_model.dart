
import 'package:ecommerce_app_admin_panel/Pages/BrandPage.dart';
import 'package:ecommerce_app_admin_panel/Pages/OrderPage.dart';
import 'package:ecommerce_app_admin_panel/Pages/ViewItem_Page.dart';
import 'package:ecommerce_app_admin_panel/Pages/add_items.dart';
import 'package:flutter/material.dart';


class dahboardModel {
  final String title ;
  final IconData  iconData ;
  final String routeName ;


  const dahboardModel ({
    required this.title ,
    required this.iconData ,
    required this.routeName
});
}

const List<dahboardModel> dashboardList = [
  dahboardModel(title: "add item", iconData: Icons.add,routeName: additemPage.routeName),
  dahboardModel(title: "view item", iconData: Icons.inventory,routeName:ViewItemPage.routeName),
  dahboardModel(title: "Brand", iconData: Icons.category,routeName:BrandPage.routerName),
  dahboardModel(title: "Orders", iconData: Icons.monetization_on,routeName:orderPage.routename),

];
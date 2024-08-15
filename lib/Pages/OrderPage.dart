import 'package:ecommerce_app_admin_panel/Providers/OrderProvider.dart';
import 'package:ecommerce_app_admin_panel/Utilis/ItemsUtils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'OrderDetailPage.dart';

class orderPage extends StatelessWidget {
  static const String routename="orderPage";
  const orderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<orderProvider>(
      builder:(context,provider,child){
        return ListView.builder(
          itemCount: provider.orderList.length,
            itemBuilder: (context,index){
            final order = provider.orderList[index];
            return ListTile(
              onTap: ()=> context.goNamed(OrderDetailPage.routeName,extra: order.orderId),
              title: Text(getFormattedDate(order.orderDate.toDate())),
              subtitle: Text(order.orderId),
              trailing: Text("\$${order.totalAmount}") ,
            );
            }
        );
      },
    );
  }
}

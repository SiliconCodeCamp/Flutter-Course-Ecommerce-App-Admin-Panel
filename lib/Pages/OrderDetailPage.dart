import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app_admin_panel/Providers/OrderProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderDetailPage extends StatelessWidget {
  static const String routeName="orderDetailsPage";
  final String orderId;
  const OrderDetailPage({super.key,required this.orderId});

  @override
  Widget build(BuildContext context) {

    final order = Provider.of<orderProvider>(context,listen: false).getOrderById(orderId);
    return Scaffold(
      appBar: AppBar(title: Text(orderId),),
      body:ListView(
        padding: EdgeInsets.all(10),
        children: [
          ListTile(
            title:Text(order.appuser.email),
            subtitle: const Text("Client info"),
          ),
          ListTile(
            title:Text(order.oderStatus),
            subtitle: const Text("order Status"),
          ),
          ListTile(
            title:Text("\$ ${order.totalAmount}"),
            subtitle: const Text("order amount price"),
          ),

          ... order.itemsDetails .map((e) => ListTile(
            leading: CircleAvatar(
              child:CachedNetworkImage(
                width: 100,
                height: 100,
                imageUrl: e.imageUrl,
                placeholder: (context,url)=> Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context,url,err)=> Icon(Icons.error),
              ),
            ),
            title: Text(e.itemModel),
            trailing: Text("${e.quantity} * \$${e.price}"),
          )).toList()
        ],
      ) ,
    );
  }
}

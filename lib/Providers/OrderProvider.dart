
import 'package:ecommerce_app_admin_panel/DB/DB_Helper.dart';
import 'package:flutter/cupertino.dart';

import '../Models/OrderModel.dart';

class orderProvider with ChangeNotifier{
  List<OrderModel> orderList= [];

  getAllOrders() {
    db_helber.getAllOrders().listen((event) {
      orderList = List.generate(event.docs.length,
              (index) => OrderModel.fromJson(event.docs[index].data()));
      notifyListeners();
    });
  }

  OrderModel getOrderById(String id) =>
      orderList.firstWhere((element) => element.orderId == id);
}
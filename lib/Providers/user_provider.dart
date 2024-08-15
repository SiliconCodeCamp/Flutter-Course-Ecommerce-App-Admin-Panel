import 'package:ecommerce_app_admin_panel/Models/User.dart';
import 'package:flutter/foundation.dart';

import '../db/db_helper.dart';



class UserProvider extends ChangeNotifier {
  List<user> userList = [];

  getAllUsers() {
    db_helber.getAllUser().listen((event) {
      userList = List.generate(event.docs.length,
              (index) => user.fromJson(event.docs[index].data()));
      notifyListeners();
    });
  }
}


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app_admin_panel/Models/Items.dart';

import '../Models/Brand_Model.dart';

class db_helber {

  
 static final FirebaseFirestore _bd = FirebaseFirestore.instance;

 //Add this code
 static const String collectionUser = "Users";
 static const String collectionBrands = "Brands";
 static const String collectionItem ="Items";
 static const String collectionCart ="My Cart";
 static const String collectionOrder ="orders";
 static const String collectionRating ="Ratings";

 static Future<bool> isAdmin (String UID) async{
         final result = await _bd.collection("Admins").doc(UID).get();
         return result.exists;

 }



 // save data to database
static Future<void> addBrand(Brand brand){
   final doc = _bd.collection("Brands").doc();
   brand.id=doc.id;
   return doc.set(brand.toJson());
}




// get data from database

static Stream<QuerySnapshot<Map<String,dynamic>>> getAllBrands() =>
    _bd.collection("Brands").snapshots();


  static Stream<QuerySnapshot<Map<String,dynamic>>> getAllItems() =>
      _bd.collection("Items").snapshots();

  static Future<void> addItem(Item item) {
    final doc = _bd.collection("Items").doc();
    item.id = doc.id;
    return doc.set(item.toJson());


  }

  static Future<void> updateItem(String id, Map<String,dynamic> map) {
    return _bd.collection("Items").doc(id).update(map);
  }

  // add this code

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllOrders() =>
      _bd.collection(collectionOrder)
          .orderBy('orderDate', descending: true,)
          .snapshots();


  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllUser() =>
      _bd.collection(collectionUser).snapshots();




}
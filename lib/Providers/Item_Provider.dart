

import 'dart:io';

import 'package:ecommerce_app_admin_panel/DB/DB_Helper.dart';
import 'package:ecommerce_app_admin_panel/Models/Brand_Model.dart';
import 'package:ecommerce_app_admin_panel/Models/Items.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

import '../Models/image_Model.dart';

class itemProvider with ChangeNotifier {

  List<Brand> BrandList = [];
  List<Item> ItemsList = [];

  Future<void> addBrand(String name ){
    final brand = Brand(name: name) ;
    return db_helber.addBrand(brand);
  }

  getAllBrands(){
    db_helber.getAllBrands().listen((snapshot) {
      BrandList = List.generate(snapshot.docs.length, (index) => Brand.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  getAllItems(){
    db_helber.getAllItems().listen((snapshot) {
     ItemsList = List.generate(snapshot.docs.length, (index) => Item.fromJson(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  Future<void> updateItemField(String id,String field , dynamic value){
    return db_helber.updateItem(id,{field:value});
  }

  Item FindItemsWithID(String id) =>
  ItemsList.firstWhere((element) => element.id == id);



  Future<imageModel> uploadImage(String imageLocalPath) async {

    final String imageName = 'image_${DateTime.now().millisecond}';
    final photoRef = FirebaseStorage.instance.ref().child("items/$imageName") ;


    final UploadTask = photoRef.putFile(File(imageLocalPath)) ;
    final snapshot= await UploadTask.whenComplete(() => null);
    final Url = await snapshot.ref.getDownloadURL();

    return imageModel(imageName: imageName,DricectoryName: "items/",DownlaodUrl:Url )
;
  }

  Future<void> addItem (Item item ) {
    return db_helber.addItem(item);
  }

  Future<void> deleteImage(String id ,imageModel img) async{

    final photRef = FirebaseStorage.instance.ref().child('items/${img.imageName}');

    return photRef.delete();
  }


}
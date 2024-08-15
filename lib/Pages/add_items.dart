import 'dart:ffi';
import 'dart:io';

import 'package:ecommerce_app_admin_panel/CustomWidgets/RadioGroup.dart';
import 'package:ecommerce_app_admin_panel/Models/Brand_Model.dart';
import 'package:ecommerce_app_admin_panel/Models/Items.dart';
import 'package:ecommerce_app_admin_panel/Models/image_Model.dart';
import 'package:ecommerce_app_admin_panel/Providers/Item_Provider.dart';
import 'package:ecommerce_app_admin_panel/Utilis/ItemsUtils.dart';
import 'package:ecommerce_app_admin_panel/Utilis/ShowInpustTextDialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import 'package:image_picker/image_picker.dart';

class additemPage extends StatefulWidget {
  static const String routeName = "AddItem";
  const additemPage({super.key});

  @override
  State<additemPage> createState() => _additemPageState();
}

class _additemPageState extends State<additemPage> {


  final _availableSizeController = TextEditingController();
  final _priceController = TextEditingController();
  final _inStockController = TextEditingController();
  final _discountController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Brand? brand ;
  String? imageLocalPath;
  DateTime? dateTime ;
  String? itemType ;
  String? itemModel;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Item "),
        actions: [
          IconButton(onPressed: _saveItem, icon: const Icon(Icons.done))
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding:  EdgeInsets.all(20),
          children: [
            Card(
              child: Column(
                children: [
                  imageLocalPath == null ?
                  const Icon(Icons.photo,size: 100,) :
                  Image.file(File(imageLocalPath!) , width :100 , height :100 ,fit:  BoxFit.cover,)

                  ,
                  const Text("Select Item Image \nFrom ")
                  ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton.icon(onPressed: (){
                        getImage(ImageSource.camera);
                      }
                          , icon: const Icon(Icons.camera),
                          label: const Text("Camera")),
                      TextButton.icon(onPressed: (){
                        getImage(ImageSource.gallery);
                      }
                          , icon: const Icon(Icons.browse_gallery),
                          label: const Text("Gallery"))

                    ],
                  )
                ],
              ),
            ),
            Card(
              child:Padding(
                padding: EdgeInsets.all(8),
                child: Consumer<itemProvider>(
                  builder: (context,provider,child)=>
                  DropdownButtonFormField<Brand>(
                    decoration:InputDecoration(border: InputBorder.none),
                      hint: Text("Select Brand"),
                      isExpanded: true,
                      validator: (value){
                      if(value == null){
                        return "Please select Brand" ;
                      }
                      return null ;

                      },
                      value: brand,
                      items: provider.BrandList.map((item) =>
                      DropdownMenuItem(
                        value: item,
                          child: Text(item.name))
                      ).toList()
                      , onChanged: (value){
                       brand = value ;
                  }),
                ),
              ),
            ),
            radioGroup(
                label: "Select Type ",
                groupValue: itemUtils.itemsType.first,
                itemsList: itemUtils.itemsType,
                onItemSelected: (value){
                  itemType=value;

                }),
            radioGroup(
                label: "Select Model ",
                groupValue: itemUtils.itemsModels.first,
                itemsList: itemUtils.itemsModels,
                onItemSelected: (value){
                  itemModel=value;

                }),
            Padding(padding: EdgeInsets.all(5),

            child: TextFormField(
              controller: _availableSizeController ,
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                labelText: "Size"
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "please enter correct size";
                }
                return null;
              },
            ),
            ),
            Padding(padding: EdgeInsets.all(5),

              child: TextFormField(
                controller: _priceController ,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    labelText: "Price"
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "please enter correct Price";
                  }
                  return null;
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(5),

              child: TextFormField(
                controller: _inStockController ,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    labelText: "In Stock Number"
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "please enter correct In Stock Number";
                  }
                  return null;
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(5),

              child: TextFormField(
                controller: _discountController ,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    labelText: "Discount"
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "please enter correct Discount Number";
                  }
                  return null;
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _availableSizeController.dispose();
    _priceController.dispose();
    _inStockController.dispose();
    _discountController.dispose();
    super.dispose();
  }

  void _saveItem () async {
if (imageLocalPath == null) {
  showMsg(context, "please select item Image");
}

    if(_formKey.currentState!.validate()){
      EasyLoading.show(status: "please wait");
      try{
        final imageModel = await Provider
            .of<itemProvider>(context,listen: false).
        uploadImage(imageLocalPath!);

        final itemObj = (Item(
            type: itemType!,
            brand: brand!,
            model: itemModel!,
            avilableSizes: _availableSizeController.text,
            price: int.parse(_priceController.text),
            inStock: int.parse(_inStockController.text),
            avgRating: 0,
            discount: 0,// ToDo With video recording cuz we forget add these please (int.parse(_discountController.text));
            thumbnail: imageModel,
            additionalimage: [])) ;

        await Provider.of<itemProvider>(context,listen: false).
        addItem(itemObj);
        showMsg(context, "Saved");
        _resetProperty();
        EasyLoading.dismiss();

      }
      catch (err){
        print(err.toString());
        EasyLoading.dismiss();
      }

    }
  }

  void _resetProperty() {

    _inStockController.clear();
    _priceController.clear();
    _availableSizeController.clear();
    _discountController.clear();

     brand = null ;
    imageLocalPath = null;
    dateTime  = null;
    itemType = null ;
    itemModel = null;


  }

  void getImage(ImageSource source) async{
    final file = await ImagePicker().pickImage(source: source,imageQuality:80 );
    if (file != null){
      setState(() {
        imageLocalPath=file.path;
      });
    }
  }



}


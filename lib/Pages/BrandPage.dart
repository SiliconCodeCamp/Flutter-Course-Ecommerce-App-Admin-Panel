

import 'package:ecommerce_app_admin_panel/Providers/Item_Provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import '../Utilis/ShowInpustTextDialogue.dart';

class BrandPage extends StatelessWidget {
  static const String routerName = "BrandPage" ;
  const BrandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Brands"),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showInputTextDialogue(context: context,title: "Add Brand",
              onSubmit: (value){
                EasyLoading.show(status: "Plese wait ");
                Provider.of<itemProvider>(context,listen: false)
                    .addBrand(value)
                    .then((value) {
                  EasyLoading.dismiss();
                  showMsg(context,"Brand Add succefully");
                });
              }
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<itemProvider>(
        builder: (context , provider , child ) => provider.BrandList.isEmpty ?
        const Center(child: Text("theres no brand found "),) :
            ListView.builder(
              itemCount: provider.BrandList.length,
              itemBuilder: (context,index){
                final brand = provider.BrandList[index] ;
                return ListTile(
                  title: Text(brand.name),
                );
              },
            )
        ,
      ),
    );
  }
}

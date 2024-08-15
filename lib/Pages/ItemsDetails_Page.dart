import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app_admin_panel/CustomWidgets/ImageHolder_View.dart';
import 'package:ecommerce_app_admin_panel/Models/Items.dart';
import 'package:ecommerce_app_admin_panel/Models/image_Model.dart';
import 'package:ecommerce_app_admin_panel/Pages/Description_Page.dart';
import 'package:ecommerce_app_admin_panel/Providers/Item_Provider.dart';
import 'package:ecommerce_app_admin_panel/Utilis/ItemsUtils.dart';
import 'package:ecommerce_app_admin_panel/Utilis/ShowInpustTextDialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:image_picker/image_picker.dart';
class ItemsDetailsPage extends StatefulWidget {
  static const String routename = 'itemsDetailsPage';
  final String id;

  const ItemsDetailsPage({super.key, required this.id});

  @override
  State<ItemsDetailsPage> createState() => _ItemsDetailsPageState();
}

class _ItemsDetailsPageState extends State<ItemsDetailsPage> {
  late Item item;
  late itemProvider provider;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    provider = Provider.of<itemProvider>(context);
    item = provider.FindItemsWithID(widget.id);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.brand.name),
      ),
      body: ListView(
        children: [
          // Part 1
          CachedNetworkImage(
            imageUrl: item.thumbnail.DownlaodUrl,
            width: double.infinity,
            height: 200,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, err) => const Icon(Icons.error),
          ),
          //part 2
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Card(
              child: ListView(
                padding: const EdgeInsets.all(12),
                scrollDirection: Axis.horizontal,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      getImage(ImageSource.gallery);

                    },
                    tooltip: 'Add Additional image',
                    child: const Icon(Icons.add),
                  ),
                  if (item.additionalimage.isEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Center(
                        child: Text(
                          'Add Additiona Images',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.grey),
                        ),
                      ),
                    ),
                  ...item.additionalimage.map((Image) => imageHolder(
                      imageModl: Image,
                      onImagePressed: () {
                        _ShowImageOnDialogue(Image);

                        // here we will write Logic code
                      }))
                ],
              ),
            ),
          ),
          // Part 3
          Padding(
            padding: EdgeInsets.all(8),
            child: ElevatedButton(
                onPressed: () {
               item.description == null ?
               context.goNamed(ItemDescriptionPage.routename,extra: item.id)
                   : _showInputDialogue();


                },
                child: Text(item.description == null
                    ? "add description"
                    : 'Show description')),
          ),
          // Part 4
          ListTile(
            title: Text(item.brand.name),
            subtitle: Text(item.model),
          ),
          ListTile(
            title: Text(
                'Price with discount:\$${priceAfterDiscount(item.price, item.discount).toStringAsFixed(0)}'),
            subtitle: Text("original Price:${item.price.toStringAsFixed(0)}"),
            trailing: IconButton(
              onPressed: () {
                showInputTextDialogue(
                    context: context,
                    title: 'Edit price',
                    onSubmit: (value) {
                      // here we will write Logic code
                      EasyLoading.show(status: "please wait");

                      provider.updateItemField(item.id!, "price", num.parse(value))
                      .then((value){
                        EasyLoading.dismiss();
                        showMsg(context, "Price Updtaed");
                      });

                    });
              },
              icon: const Icon((Icons.edit)),
            ),
          ),
          ListTile(
            title: Text("Discount:${item.discount.toStringAsFixed(0)}"),
            trailing: IconButton(
              onPressed: () {
                showInputTextDialogue(
                    context: context,
                    title: 'Edit Discount',
                    onSubmit: (value) {
                      // here we will write Logic code

                      EasyLoading.show(status: "please wait");

                      provider.updateItemField(item.id!, "discount", num.parse(value))
                          .then((value){
                        EasyLoading.dismiss();
                        showMsg(context, "discount updated");
                      });
                    });
              },
              icon: const Icon((Icons.edit)),
            ),
          ),
          ListTile(
            title: Text("Stock:${item.inStock.toStringAsFixed(0)}"),
            trailing: IconButton(
              onPressed: () {
                showInputTextDialogue(
                    context: context,
                    title: 'Edit Stock',
                    onSubmit: (value) {
                      EasyLoading.show(status: "please wait");

                      provider.updateItemField(item.id!, "inStock", num.parse(value))
                          .then((value){
                        EasyLoading.dismiss();
                        showMsg(context, "stock updated");
                      });

                    });
              },
              icon: const Icon((Icons.edit)),
            ),
          ),
        ],
      ),
    );
  }

  void getImage(ImageSource source) async {
    final file = await ImagePicker().pickImage(source: source,imageQuality: 70);
    if ( file != null){
      EasyLoading.show(status:  "please wait ");
      final newImage = await provider.uploadImage(file.path);
      item.additionalimage.add(newImage);
      provider.updateItemField(item.id!
          , "additionalimage"
          , toImageList(item.additionalimage)).then(
              (value) {
                EasyLoading.dismiss();
                showMsg(context, "Added") ;
                setState(() {

                });
              })
      .catchError((err){
        EasyLoading.dismiss();
        showMsg(context, "Failed to add");

      })
      ;

    }
    
    
  }

  void _ShowImageOnDialogue(imageModel img) {
    showDialog(context: context, builder: (context)=>AlertDialog(
      content: CachedNetworkImage(
        fit: BoxFit.contain,
        height: MediaQuery.of(context).size.height/2 ,
        imageUrl: img.DownlaodUrl,
        placeholder: (context,url) => Center(child: CircularProgressIndicator(),),
        errorWidget: (context,url,err){
          return const Icon(Icons.error);
        },
      ) ,
      actions: [
        IconButton(onPressed: (){
          Navigator.pop(context);

        }, icon: Icon(Icons.close)),
        IconButton(
            onPressed: () async{
               Navigator.pop(context);
               EasyLoading.show(status: "please wait");

               try{
                 await provider.deleteImage(item.id!, img);
                 item.additionalimage.remove(img);
                 await provider.updateItemField(item.id!, "additionalimage",
                     toImageList(item.additionalimage)
                 );
                 EasyLoading.dismiss();
                 setState(() {

                 });



               }
                   catch(err){
                 showMsg(context, "Failed to delete image");

                   }

        }, icon: Icon(Icons.delete))
      ],
    ));

  }

  _showInputDialogue() {
    showDialog(context: context, builder: (context)=>AlertDialog(
      title:Text(item.model),
      content: SingleChildScrollView(
        child:Text(item.description!),
      ),
      actions: [
        TextButton(onPressed: (){
          context.pop();
          context.goNamed(ItemDescriptionPage.routename,extra: item.id);

        }, child: Text('Edit')),
        TextButton(onPressed: (){
          context.pop();


        }, child: Text('close')),
      ],
    ));
  }
}

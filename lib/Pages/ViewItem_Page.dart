
import 'package:ecommerce_app_admin_panel/Pages/ItemsDetails_Page.dart';
import 'package:ecommerce_app_admin_panel/Providers/Item_Provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ViewItemPage extends StatefulWidget {
  static const String routeName = "ViewItem";
  const ViewItemPage({super.key});

  @override
  State<ViewItemPage> createState() => _ViewItemPageState();
}

class _ViewItemPageState extends State<ViewItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("items"),),
      body: Consumer<itemProvider>(
        builder: (context,provider,child) => ListView.builder(
          itemCount: provider.ItemsList.length ,
          itemBuilder:(context,index){
            final item = provider.ItemsList[index];
            return InkWell(
              onTap: (){

                context.goNamed(ItemsDetailsPage.routename,extra: item.id);

              },
              child: Card(
                elevation: 0,
                  color: Colors.transparent,
                child: Row(
                  children: [

                    CachedNetworkImage(
                        imageUrl: item.thumbnail.DownlaodUrl,
                      width: 100,
                      height: 100,
                      fit:BoxFit.cover,
                      placeholder: (context,url)=>
                      const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context,url,err)=> const Icon(Icons.error),

                    ),
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.brand.name,style: const TextStyle(fontSize: 16,color: Colors.black),),
                              Text(item.model,style: const TextStyle(fontSize: 14,color: Colors.grey),)
                            ],
                          ),
                        )
                    )

                  ],
                ),
              ),
            );
          } ,
        ),
      )
    );
  }
}

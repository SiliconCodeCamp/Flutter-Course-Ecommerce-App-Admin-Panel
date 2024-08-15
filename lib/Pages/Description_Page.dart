import 'package:ecommerce_app_admin_panel/Providers/Item_Provider.dart';
import 'package:ecommerce_app_admin_panel/Utilis/ShowInpustTextDialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

class ItemDescriptionPage extends StatefulWidget {
  static const String routename ="Description" ;
  final String id ;
  const ItemDescriptionPage({super.key,required this.id
  });

  @override
  State<ItemDescriptionPage> createState() => _ItemDescriptionPageState();
}

class _ItemDescriptionPageState extends State<ItemDescriptionPage> {
  final _controller = TextEditingController();
  String? description;

  @override
  void didChangeDependencies() {

    description = Provider.of<itemProvider>(context,listen: false)
        .FindItemsWithID(widget.id).description;

    if(description != null){
      _controller.text = description! ;
    }


    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Description'),
        actions: [
          IconButton(onPressed: (){
            _SaveDescription();

          }, icon: Icon(Icons.save)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.grey,
        height: double.infinity,
        child: TextFormField(
          controller: _controller,
          maxLines: 900 ,
          autofocus: true,
          decoration: InputDecoration(
            border: OutlineInputBorder()
          ),
        ),
      ),
    );
  }

  void _SaveDescription() {

    if(_controller.text.isEmpty){
      showMsg(context, "Field Is empty") ;
      return;
    }
    EasyLoading.show(status: 'please wait ');
    Provider.of<itemProvider>(context,listen: false)
        .updateItemField(widget.id, "description", _controller.text)
    .then((value) {
      showMsg(context, "Description Added");
      EasyLoading.dismiss();
    }

    ).catchError((err){
      EasyLoading.dismiss();
      showMsg(context, "failed to add Description");


    });

  }
}

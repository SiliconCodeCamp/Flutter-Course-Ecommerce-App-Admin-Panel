
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showInputTextDialogue ({ required BuildContext context
, required title
, required Function(String) onSubmit,
})
{

  final controller = TextEditingController();
  showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text(title),
    content: Padding(
      padding: EdgeInsets.all(15),
      child: TextField(
        controller: controller,
        autofocus: true,
        decoration: InputDecoration(
            labelText : title
        ),
      ),
    ),
    actions: [
      TextButton(onPressed: ()=> Navigator.pop(context), child: Text("cancel")),

      TextButton(onPressed: (){
        if(controller.text.isEmpty) return;
        onSubmit(controller.text);
        Navigator.pop(context);



      }, child: Text("ok"))
    ],
  ));
}

showMsg(BuildContext context , String Msg){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(Msg)));
}
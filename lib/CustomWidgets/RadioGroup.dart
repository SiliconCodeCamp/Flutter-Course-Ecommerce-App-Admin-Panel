import 'package:flutter/material.dart';

class radioGroup extends StatefulWidget {
  final String groupValue ;
  final String label ;
  final List<String> itemsList ;
  final Function(String) onItemSelected ;
  const radioGroup({super.key,
  required this.label,
    required this.groupValue,
    required this.itemsList,
    required this.onItemSelected

  });

  @override
  State<radioGroup> createState() => _radioGroupState();
}

class _radioGroupState extends State<radioGroup> {
  late String groupValue = widget.groupValue;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.label),
            for(int i = 0 ; i<widget.itemsList.length;i++)
              Row(
                children: [
                  Radio(value: widget.itemsList[i],
                      groupValue: groupValue,
                      onChanged: (value){
                  setState(() {
                    groupValue= value!;
                  });
                  widget.onItemSelected(value!);

                      }),
                  Text(widget.itemsList[i]),
                ],
              )


          ],
        ),
      ),
    );
  }
}

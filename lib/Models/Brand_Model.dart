
class Brand {
  String? id ;
  String name ;


  Brand({
    this.id ,
    required this.name

});

  // convert data to json
Map<String,dynamic> toJson(){
  return <String,dynamic>{
    'id':id,
    'name':name,
  };
}



 // convert json to data
factory Brand.fromJson(Map<String,dynamic> map) => Brand(
  id: map['id'],
  name : map['name'],
);



}
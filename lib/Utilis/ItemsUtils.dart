import 'package:ecommerce_app_admin_panel/Models/image_Model.dart';
import 'package:intl/intl.dart';

abstract final class itemUtils {

  static const List<String> itemsType = ["Silk","cotton", "polyster" ,"linen",
    "Satin","chifron"];

  static const List<String> itemsModels = ["shirt","T-Shirt", "Blouse" ,"Hoodie",
    "polotShirt","trouser","short"];
}

num priceAfterDiscount(num price , num discount) {
  return price-(price*discount/100);
}

List<Map<String,dynamic>> toImageList(List<imageModel> images){
  return List.generate(images.length, (index) => images[index].toJson());

}
//Add this function
getFormattedDate(DateTime dt, {String pattern = 'dd/MM/yyyy'}) =>
    DateFormat(pattern).format(dt);

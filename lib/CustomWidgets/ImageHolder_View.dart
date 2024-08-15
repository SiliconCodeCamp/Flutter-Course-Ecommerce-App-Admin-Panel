import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app_admin_panel/Models/image_Model.dart';
import 'package:flutter/material.dart';

class imageHolder extends StatelessWidget {
  final imageModel imageModl ;
  final VoidCallback onImagePressed ;
  const imageHolder({super.key,required this.imageModl,required this.onImagePressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 90,
      height: 90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,width: 1.5)
      ),
      child: InkWell(
        onTap: onImagePressed,
        child: CachedNetworkImage(
          imageUrl: imageModl.DownlaodUrl,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, err) => const Icon(Icons.error),
        ),
      ),
    );
  }
}

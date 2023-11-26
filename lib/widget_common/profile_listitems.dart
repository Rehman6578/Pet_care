import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile_list extends StatelessWidget {

  // add required attributes to the constructor
  Image image;
  String name;

  profile_list({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: (){

        },
        leading: CircleAvatar(child: image,),
        title: Text(name),
        trailing: Icon(Icons.arrow_forward_ios)
    );
  }
}
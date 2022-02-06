import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mongez_app/model/category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel model;


  CategoryItem(this.model);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_,cons)=> Container(
        child: Column(
          children: [
             Stack(
               children: [
                 Container(
                 padding: EdgeInsets.all(8),
                 child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),

                  child:  FadeInImage(
                    placeholder:
                    AssetImage('assets/images/watch_item1.png'),
                    fit: BoxFit.cover,
                    height: cons.maxHeight-20,
                    width: cons.maxWidth-5,
                    image: NetworkImage(
                      model.image,
                    ),
                  ),
                  ),
               ),
                 Align(
                   alignment: Alignment.topRight,
                     child: Container(
                       margin: EdgeInsets.all(10),
                       child: Card(
                         color: Colors.white,
                         elevation: 3,
                         shape:RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(5.0),
                         ),
                         child: Text(
                           model.name,style: TextStyle(color: Colors.black,fontSize: 15),
                         ),
                       ),
                     ))
      ]
             ),
           // SizedBox(height: 5,),
          //  Center(child: Text(model.name,style: TextStyle(fontSize: 15,color: Colors.black),),)
          ],

        ),
      ),
    );
  }
}

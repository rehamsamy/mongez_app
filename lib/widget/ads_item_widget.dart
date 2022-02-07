import 'package:flutter/material.dart';
import 'package:mongez_app/model/ads_model.dart';

class AdsItemWidget extends StatelessWidget {
AdsModel model;


AdsItemWidget(this.model);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_,cons)=>
       Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15)
         ),
        child: Card(
          elevation: 5,
          color: Colors.white,
       child:   Stack(
            children: [
            FadeInImage(
              fit: BoxFit.cover,
              width: cons.maxWidth,
              height: cons.maxHeight,
              image:  NetworkImage(model.url,),
          placeholder:
          AssetImage('assets/images/watch_item1.png',),
        ),
              Positioned(
                left: 0,
                  right: 0,
                  bottom: 1,
                  child: Container(margin: EdgeInsets.all(10),
                    color: Colors.black54,
                    child: FittedBox(
                      child: Text(
                model.title,style: TextStyle(color: Colors.white),
              ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

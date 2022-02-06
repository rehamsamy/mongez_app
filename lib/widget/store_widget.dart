import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mongez_app/model/store_model.dart';

class StoreWidget extends StatelessWidget {
  StoreModel model;

  StoreWidget(this.model);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 210,
            child: Stack(
              children: [
                Container(
                  height: 180,
                  child: Image.asset(model.image,fit: BoxFit.fill,
                  width: double.infinity,),
                ),
                Positioned(
                  left: 1,
                  top: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),

                    child:  Image.asset('assets/images/store1.png',
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,)
                  ),
                ),
              ],
            ),
          ),
          Text(model.name),
          Container(
              width:100,
              height:50,child: Rating(model.rate)),
          Text(model.desc)
        ],
      )


    );
  }
}


class Rating extends StatefulWidget {
double rating;

Rating(this.rating);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return   RatingBarIndicator(
      rating: widget.rating,
      itemBuilder: (context, index) => Icon(
      //  _selectedIcon ??
          Icons.star,
        color: Colors.amber,
      ),
      itemCount: 5,
      itemSize: 20.0,
      unratedColor: Colors.amber.withAlpha(60),
     // direction: _isVertical ? Axis.vertical : Axis.horizontal,
    );
  }
}


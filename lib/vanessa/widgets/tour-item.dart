// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TourItem extends StatefulWidget {
  String? imageUrl;
  String? name;
  String? days;
  String? price;
  String? rating;
  String? reviews;

  TourItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.days,
    required this.price,
    required this.rating,
    required this.reviews,
  }) : super(key: key);

  @override
  State<TourItem> createState() => _TourItemState();
}

class _TourItemState extends State<TourItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Stack(
        children: [
          Column(
            //spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.network(
                  widget.imageUrl!,
                  width: 250,
                  height: 180,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 1),
                child: Row(
                  children: [
                    Text(
                      widget.name!,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text("""${widget.days} - from \$${widget.price}/person  """),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 4,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star_outline,
                            color: Colors.black,
                            size: 12,
                          ),
                          Text(
                            widget.rating!,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text('${widget.reviews} reviews'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: CircleAvatar(
              backgroundColor: Color(0xffF5F6F8),
              child: Icon(Icons.favorite_outline),
            ),
          ),

          Positioned(
            bottom: 10,
            right: 4,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.black,
              child: Icon(
                CupertinoIcons.arrow_right,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

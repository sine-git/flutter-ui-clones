// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String? imageUrl;
  final bool withIcon;
  Profile({Key? key, this.imageUrl, this.withIcon = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: withIcon
          ? BoxDecoration(
              color: withIcon ? Color(0xffFFCF93) : Colors.transparent,
              shape: BoxShape.circle,
              border: BoxBorder.all(width: 1, color: Colors.white),
            )
          : BoxDecoration(
              image: DecorationImage(image: NetworkImage(imageUrl!)),
              shape: BoxShape.circle,
              border: BoxBorder.all(width: 1, color: Colors.white),
            ),
      child: withIcon
          ? Icon(Icons.add, color: Colors.white)
          : SizedBox.shrink(),
    );
  }
}

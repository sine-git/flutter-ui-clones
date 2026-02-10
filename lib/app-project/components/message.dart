// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  String userAvatar;
  String sender;
  String profile;
  String sendTime;
  String message;
  Message({
    Key? key,
    required this.userAvatar,
    required this.sender,
    required this.profile,
    required this.sendTime,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 20,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(this.userAvatar),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sender,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(profile, style: TextStyle(color: Color(0XffA5A6AA))),
                    ],
                  ),
                ],
              ),
              Text(sendTime, style: TextStyle(color: Color(0xff515254))),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, top: 20),
            child: Text(message),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "REPLY",
                style: TextStyle(
                  color: Color(0xFF645AA0),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

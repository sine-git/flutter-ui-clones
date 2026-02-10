// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DurationTile extends StatefulWidget {
  String duration;
  String time;
  DurationTile({Key? key, required this.duration, required this.time})
    : super(key: key);

  @override
  State<DurationTile> createState() => _DurationTileState();
}

class _DurationTileState extends State<DurationTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.black.withValues(alpha: 0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(20),
      ),
      child: ListTile(
        leading: Icon(Icons.lock_clock_outlined),
        title: Text(widget.duration, style: TextStyle(fontSize: 14)),
        trailing: Text(widget.time),
      ),
    );
  }
}

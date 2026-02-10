// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  List<Map<String, dynamic>> infos;
  InfoCard({Key? key, required this.infos}) : super(key: key);

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Personnal Info",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              "Edit",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          ...List.generate(
            widget.infos.length,
            (index) => ListTile(
              title: Text("${widget.infos[index]["name"]}"),
              subtitle: Text("${widget.infos[index]["value"]}"),
              leading: Icon(widget.infos[index]["icon"], color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

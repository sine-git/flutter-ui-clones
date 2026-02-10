import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  bool isSelected = false;
  String text;
  CategoryItem({super.key, required this.isSelected, required this.text});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: widget.isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        widget.text,
        style: TextStyle(color: widget.isSelected ? Colors.white : Colors.grey),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  bool selected;
  String label;
  int index;
  void Function(int) onTab;
  CustomTab({
    Key? key,
    required this.selected,
    required this.label,
    required this.index,
    required this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTab?.call(index);
      },
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        alignment: Alignment.center,
        duration: Duration(microseconds: 10),
        decoration: BoxDecoration(
          color: selected ? Color(0xff6246C6) : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: TextStyle(color: selected ? Colors.white : Color(0xff6246C6)),
        ),
      ),
    );
  }
}

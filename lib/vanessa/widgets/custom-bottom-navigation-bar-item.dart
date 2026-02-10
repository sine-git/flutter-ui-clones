import 'package:flutter/material.dart';

class CustomBottomNavigationBarItem extends StatefulWidget {
  IconData icon;
  bool isSelected = false;
  int index;
  void Function(int) onSelectedIndex;

  CustomBottomNavigationBarItem({
    Key? key,
    required this.icon,
    required this.isSelected,
    required this.index,
    required this.onSelectedIndex,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBarItem> createState() =>
      _CustomBottomNavigationBarItemState();
}

class _CustomBottomNavigationBarItemState
    extends State<CustomBottomNavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onSelectedIndex.call(widget.index);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 70,
        height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.isSelected ? Colors.white : Colors.black,
        ),
        child: Icon(
          widget.icon,
          color: widget.isSelected ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}

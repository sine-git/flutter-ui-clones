// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ui_clones/vanessa/widgets/classes/custom-bottom-navigation-item.dart';

import 'package:ui_clones/vanessa/widgets/custom-bottom-navigation-bar-item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  int currentIndex = 0;
  List<CustomBottomNavigationItem> items;
  void Function(int) onChanged;

  CustomBottomNavigationBar({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          widget.items.length,
          (index) => CustomBottomNavigationBarItem(
            icon: widget.items[index].icon,
            index: index,
            isSelected: _selectedIndex == index,
            onSelectedIndex: (index) {
              widget.onChanged.call(index);
              setState(() {
                _selectedIndex = index;
                // _setCurrentIndex(index);
                //
              });
            },
          ),
        ),
      ),
    );
  }

  _setCurrentIndex(index) {
    setState(() {
      for (int i = 0; i < widget.items.length; i++) {
        if (i == index) {
          continue;
        }
        widget.items[i].isSelected = false;
      }
      widget.items[index].isSelected = true;
    });
  }
}

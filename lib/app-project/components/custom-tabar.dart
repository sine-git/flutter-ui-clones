// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ui_clones/app-project/components/custom-tab.dart';

import 'package:ui_clones/app-project/components/models/tab-item.dart';

class CustomTabBar extends StatefulWidget {
  List<CustomTabItem> items;
  void Function(int) onChanged;
  CustomTabBar({Key? key, required this.items, required this.onChanged})
    : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          ...List.generate(
            widget.items.length,
            (index) => widget.items[index]..index = index,
          ).map(
            (item) => Expanded(
              child: CustomTab(
                label: item.label,
                selected: item.selected,
                index: item.index!,
                onTab: (index) {
                  final currentIndex = index;
                  setState(() {
                    for (int i = 0; i < widget.items.length; i++) {
                      if (i != index) {
                        widget.items[i].selected = false;
                      }
                    }
                    widget.items[index].selected = true;
                  });
                  widget.onChanged.call(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ui_clones/app-project/components/profile.dart';

class Task extends StatelessWidget {
  String title;
  double progression;

  bool isCompleted;
  Task({
    Key? key,
    required this.title,
    required this.progression,

    this.isCompleted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Checkbox(
          value: isCompleted,
          onChanged: null,

          //          checkColor: Color(0xff5ECB79),
          fillColor: WidgetStatePropertyAll(
            isCompleted ? Color(0xff5ECB79) : Colors.white,
          ),
        ),
        title: Text(
          title,
          style: isCompleted
              ? TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Color(0xFFB1B3B4),
                )
              : TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: LinearProgressIndicator(
          value: progression,
          color: isCompleted ? Color(0xff5ECB79) : Color(0XFFFFD18E),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              //color: Colors.blue,
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              width: 80,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Profile(
                      imageUrl:
                          'https://cdn.pixabay.com/photo/2018/08/01/06/43/girl-3576679_1280.jpg',
                    ),
                  ),
                  Positioned(
                    left: 15,
                    child: Profile(
                      imageUrl:
                          'https://img.freepik.com/photos-gratuite/portrait-exterieur-belle-jeune-fille-brune-dans-parc_231208-4645.jpg?semt=ais_hybrid&w=740&q=80',
                    ),
                  ),
                ],
              ),
            ),

            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}

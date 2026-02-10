import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:ui_clones/app-project/components/custom-tabar.dart';
import 'package:ui_clones/app-project/components/message.dart';
import 'package:ui_clones/app-project/components/models/tab-item.dart';
import 'package:ui_clones/app-project/components/profile.dart';
import 'package:ui_clones/app-project/components/task.dart';

class AppProjectPage extends StatefulWidget {
  const AppProjectPage({super.key});

  @override
  State<AppProjectPage> createState() => _AppProjectPageState();
}

List<CustomTabItem> contents = [
  CustomTabItem(label: 'Task List', selected: true),
  CustomTabItem(label: 'File', selected: false),
  CustomTabItem(label: 'Comment', selected: false),
];

List<Map<String, dynamic>> tasks = [
  {'title': 'Dashboard design', 'progression': 0.5, 'isCompleted': false},
  {'title': 'Mobile App design', 'progression': 0.8, 'isCompleted': true},
  {'title': 'Wireframe design', 'progression': 0.6, 'isCompleted': false},
];

class _AppProjectPageState extends State<AppProjectPage> {
  List<Widget> tabContents = [_buildTask(), _buildFile(), _buildComment()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF7F6F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            Text("App Project", style: TextStyle(fontWeight: FontWeight.bold)),
            Icon(Icons.calendar_month_outlined),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              //height: MediaQuery.of(context).size.height * 0.30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 30,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          width: 100,

                          child: CircularPercentIndicator(
                            radius: 50,
                            lineWidth: 12,
                            percent: 0.35,
                            center: Text(
                              "35%",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            progressColor: Color(0xFF5CC579),

                            backgroundColor: Colors.grey.shade300,
                            circularStrokeCap: CircularStrokeCap.round,
                          ),
                          //color: Colors.pink,
                        ),
                      ),
                      _buildProfiles(),
                    ],
                  ),
                  _buildActionButtons(),
                ],
              ),
            ),
            _buildContents(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfiles() {
    return Expanded(
      child: Container(
        alignment: Alignment.centerLeft,
        //height: MediaQuery.of(context).size.height * 0.2,
        //color: Colors.blue,
        child: Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.center,
          width: 50,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: [
              Text("Team", style: TextStyle(fontWeight: FontWeight.bold)),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Profile(
                      imageUrl:
                          'https://cdn.pixabay.com/photo/2018/08/01/06/43/girl-3576679_1280.jpg',
                    ),
                  ),
                  Positioned(
                    right: -20,
                    child: Profile(
                      imageUrl:
                          'https://img.freepik.com/photos-gratuite/portrait-exterieur-belle-jeune-fille-brune-dans-parc_231208-4645.jpg?semt=ais_hybrid&w=740&q=80',
                    ),
                  ),
                  Positioned(
                    right: -40,
                    child: Profile(
                      imageUrl:
                          'https://i.pinimg.com/236x/b8/4a/af/b84aafcd401f154322d0cebd6a67356d.jpg',
                    ),
                  ),
                  Positioned(right: -60, child: Profile(withIcon: true)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 2,
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 10),
                ),
                backgroundColor: WidgetStatePropertyAll(
                  Color(0xFF5CC579).withValues(alpha: 0.2),
                ),
              ),
              child: Text("App", style: TextStyle(color: Color(0xFF5CC579))),
            ),
            IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF5CC579)),
              ),
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.white),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},

          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                side: BorderSide(color: Color(0xffF2F2F2), width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          child: Text("Done", style: TextStyle(color: Color(0xFF676874))),
        ),
      ],
    );
  }

  _buildContents() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: CustomTabBar(
            items: contents,
            onChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        tabContents[currentIndex],
      ],
    );
  }
}

_buildTask() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    child: Column(
      //mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 10,
            children: [
              Text("Add task", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                width: 30,
                height: 30,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.center,
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xffFFCF93)),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [Text('All tasks'), Icon(Icons.expand_more)],
          ),
        ),

        Container(
          clipBehavior: Clip.none,
          height: 500,
          //color: Colors.pink,
          child: ListView.separated(
            primary: false,
            itemBuilder: (context, index) => Task(
              title: tasks[index]['title'],
              progression: tasks[index]['progression'],
              isCompleted: tasks[index]['isCompleted'],
            ),
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemCount: tasks.length,
          ),
        ),
      ],
    ),
  );
}

_buildFile() {
  return Text('File comment list');
}

_buildComment() {
  return Container(
    height: 500,
    clipBehavior: Clip.none,
    decoration: BoxDecoration(
      color: Colors.white,
      //color: Colors.pink,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    child: ListView(
      children: [
        Message(
          userAvatar:
              'https://cdn.pixabay.com/photo/2018/08/01/06/43/girl-3576679_1280.jpg',
          sender: 'Nasir Bin Borhan',
          profile: 'Lead Designer',
          sendTime: '1 hour ago',
          message:
              '@Imran I am working on it right now. may be after 4/5 minutes I can show you some changes on this pages, Than we can make a call.',
        ),
        Message(
          userAvatar:
              'https://cdn.pixabay.com/photo/2018/08/01/06/43/girl-3576679_1280.jpg',
          sender: 'Nasir Bin Borhan',
          profile: 'Lead Designer',
          sendTime: '1 hour ago',
          message:
              '@Imran I am working on it right now. may be after 4/5 minutes I can show you some changes on this pages, Than we can make a call.',
        ),
        Message(
          userAvatar:
              'https://cdn.pixabay.com/photo/2018/08/01/06/43/girl-3576679_1280.jpg',
          sender: 'Nasir Bin Borhan',
          profile: 'Lead Designer',
          sendTime: '1 hour ago',
          message:
              '@Imran I am working on it right now. may be after 4/5 minutes I can show you some changes on this pages, Than we can make a call.',
        ),
      ],
    ),
  );
}

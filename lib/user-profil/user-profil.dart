import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_clones/user-profil/widgets/info-card.dart';

class UserProfilPage extends StatefulWidget {
  const UserProfilPage({super.key});

  @override
  State<UserProfilPage> createState() => _UserProfilePagetate();
}

class _UserProfilePagetate extends State<UserProfilPage> {
  List<Map<String, dynamic>> infos = [
    {"name": "Name", "value": "Terry Melton", "icon": Icons.person_2},
    {"name": "E-mail", "value": "melton89@gmail.com", "icon": Icons.favorite},
    {"name": "Phone Number", "value": "+1 201 555-1023", "icon": Icons.phone},
    {
      "name": "Home address",
      "value": "70 Rainey Street, Apartment 146, Austin TX 78701",
      "icon": Icons.home,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xFFF3F4F5),
      body: SingleChildScrollView(
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Profile",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildProfilAvater(),
            InfoCard(infos: infos),
            InfoCard(infos: infos),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationAppBar(),
    );
  }

  _buildProfilAvater() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: BoxBorder.all(color: Colors.white, width: 2),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50,
              backgroundImage: NetworkImage(
                "https://i.discogs.com/3C2XTVEmefo-dAqMWE5M7LDoYTPo9uNNCAiEx2YKpjw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTExNzgz/MzktMTY0MzQwMzky/NS01OTg4LmpwZWc.jpeg",
              ),
            ),
          ),
          Positioned(
            bottom: -10,
            right: -10,
            child: IconButton.filled(
              onPressed: () {},
              icon: Icon(Icons.edit, color: Colors.grey),
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildBottomNavigationAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 2, offset: Offset(0, 1), color: Colors.grey),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        selectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.map), label: "Map"),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.arrow_right_arrow_left),
            label: "Transfer",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: "Setting",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                "https://www.telegraph.co.uk/content/dam/music/2020/08/11/TELEMMGLPICT000236860219_trans_NvBQzQNjv4BqzZL_HMzlptxm9lUXbzFObzNrbFfUyXIXlfRwb-jIT4I.jpeg?imwidth=640",
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

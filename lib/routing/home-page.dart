import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_clones/dependancies-injection/user-service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userService = Get.find<UserService>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    context.push('/favorite');
                  },
                  child: Text('The Favorite page'),
                ),
                TextButton(
                  onPressed: () {
                    context.push('/about');
                  },
                  child: Text('The About page'),
                ),
              ],
            ),
            Text(userService.getUser()),
            Text(userService.getHome()),
          ],
        ),
      ),
    );
  }
}

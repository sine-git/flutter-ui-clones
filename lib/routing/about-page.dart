import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            context.pop();
          },
        ),
        title: Text('About page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                context.push('/');
              },
              child: Text('The Home page'),
            ),
            TextButton(
              onPressed: () {
                context.push('/favorite');
              },
              child: Text('The Favorite page'),
            ),
          ],
        ),
      ),
    );
  }
}

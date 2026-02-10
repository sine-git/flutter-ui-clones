import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
        title: Text("Favorite page"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                context.go('/');
              },
              child: Text('The Home page'),
            ),
            TextButton(
              onPressed: () {
                context.go('/about');
              },
              child: Text('The About page'),
            ),
          ],
        ),
      ),
    );
  }
}

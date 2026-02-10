import 'package:go_router/go_router.dart';
import 'package:ui_clones/chat/chat-page.dart';
import 'package:ui_clones/routing/about-page.dart';
import 'package:ui_clones/routing/favorite-page.dart';
import 'package:ui_clones/routing/home-page.dart';

GoRouter routes = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => ChatPage()),
    GoRoute(path: '/home', builder: (context, state) => HomePage()),
    GoRoute(path: '/about', builder: (context, state) => AboutPage()),
    GoRoute(path: '/favorite', builder: (context, state) => FavoritePage()),
  ],
);

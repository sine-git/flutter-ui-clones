// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ui_clones/dependancies-injection/home-service.dart';

class UserService {
  HomeService homeService;
  UserService(this.homeService);
  String getUser() {
    return 'This is the user from UserService';
  }

  String getHome() {
    return this.homeService.getHome();
  }
}

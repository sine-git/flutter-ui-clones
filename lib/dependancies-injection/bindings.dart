import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';
import 'package:ui_clones/dependancies-injection/car-service.dart';
import 'package:ui_clones/dependancies-injection/home-service.dart';
import 'package:ui_clones/dependancies-injection/user-service.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarService());
    Get.lazyPut(() => HomeService());
    Get.lazyPut(() => UserService(Get.find()));
  }
}

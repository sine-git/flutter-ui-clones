import 'package:get/instance_manager.dart';
import 'package:ui_clones/chat/chat-service.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatService>(() => ChatService());
  }
}

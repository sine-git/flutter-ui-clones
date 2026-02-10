import 'dart:async';

import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

class ChatService {
  final IO.Socket socket = IO.io(
    'http://10.175.2.115:3800',
    OptionBuilder().setTransports(['websocket']) // for Flutter or Dart VM
    .build(),
  );

  final _socketResponse = StreamController<dynamic>();
  void Function(dynamic) get addResponse => _socketResponse.sink.add;
  Stream<dynamic> get getResponse => _socketResponse.stream;

  ChatService() {
    print('Before connecting to socket......');
    ;
    connect();
  }
  connect() {
    socket.onConnect((_) {
      print('Socket is connected...');
    });
    socket.on(
      'lessons',
      (data) => addResponse(data),
      //print(data)
    );
    socket.onDisconnect((_) => print('disconnect'));
  }

  getMessages() {
    return getResponse;
  }

  sendMessage(dynamic message) {
    socket.emit('createLessonGateway', message);
  }
}

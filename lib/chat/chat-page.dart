import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_clones/chat/chat-service.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController messageController = new TextEditingController();
  final chatService = Get.find<ChatService>();
  final messages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: StreamBuilder(
              stream: chatService.getMessages(),
              builder: (context, asyncSnapshot) {
                if (asyncSnapshot.connectionState == ConnectionState.waiting) {
                  return Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  );
                } else if (asyncSnapshot.hasData) {
                  final response = asyncSnapshot.data as dynamic;
                  messages.add(response);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          //color: Colors.blue
                        ),
                        child: Row(
                          mainAxisAlignment:
                              messages[index]['senderId'] == 'moi'
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                /*   alignment: messages[index]['senderId'] == 'moi'
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft, */
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: messages[index]['senderId'] == 'moi'
                                      ? Colors.green
                                      : Colors.pink,
                                ),
                                child: Text(
                                  """${messages[index]['message']}""",
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white,

                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {}
                return Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: Text("Impossible de charger les message"),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                //color: Colors.pink
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      chatService.sendMessage({
                        {
                          "_senderId": "moi",
                          "_receiverId": "seydina",
                          "message": messageController.text,
                        },
                      });
                      messageController.clear();
                    },
                    icon: Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

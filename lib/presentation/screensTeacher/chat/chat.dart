import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/widgets/text.dart';

class ChatScreenT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
           backgroundColor: backG,
          appBar: AppBar(
            backgroundColor: Colors.white, 
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back)),
            title: CustomText(
              'WISE ICCL CHAT',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          body: ChatScreenW(),
        ),
      ),
    );
  }
}

class ChatScreenW extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreenW> {
  final List<Message> messages = [
    Message('John', 'Hello!'),
    Message('Alice', 'Hi John!'),
    Message('John', 'How are you?'),
    Message('Alice', 'I\'m good, thank you!'),
  ];

  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return ChatBubble(
                username: messages[index].username,
                message: messages[index].message,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                    hintText: 'Type your message...',
                  ),
                ),
              ),
              SizedBox(width: 8.0),
              ElevatedButton(
                onPressed: () {
                  if (_messageController.text.isNotEmpty) {
                    setState(() {
                      messages.add(Message('You', _messageController.text));
                      _messageController.clear();
                    });
                  }
                },
                child: Text('Send'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String username;
  final String message;

  ChatBubble({required this.username, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$username:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.0),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String username;
  final String message;

  Message(this.username, this.message);
}

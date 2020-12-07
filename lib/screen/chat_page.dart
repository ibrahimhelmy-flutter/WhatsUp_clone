
import 'package:flutter/material.dart';
import 'package:whats_up_clone/models/chat_model.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> myList = ChatModel.getList();
    return ListView.builder(
      itemCount: myList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [

            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(myList[index].AvaterUrl),
              ),
              title: Text(myList[index].name),
              subtitle: Text(myList[index].message),
              trailing: Text(myList[index].time),
            ),  Divider(),
          ],
        );
      },
    );
  }
}

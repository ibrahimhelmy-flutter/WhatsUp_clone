import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_up_clone/screen/call_page.dart';
import 'package:whats_up_clone/screen/camera_page.dart';
import 'package:whats_up_clone/screen/chat_page.dart';
import 'package:whats_up_clone/screen/status_page.dart';

class WhatsAppHome extends StatefulWidget {
  var cameras;
  WhatsAppHome(this.cameras);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 1.0,
        bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt,),),
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ]),
        actions: [Icon(Icons.search),SizedBox(width: 3.0,),Icon(Icons.more_vert)],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[CameraPage(widget.cameras), ChatPage(), StatusPage(), CallPage()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("open chat"),
        child: Icon(Icons.message_rounded,color: Colors.white,),
        backgroundColor:Theme.of(context).accentColor ,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whats_up_clone/whatsapp_home.dart';
import 'package:camera/camera.dart';


List<CameraDescription> cameras;
Future<Null> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras=await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
          primaryColor: Color(0xff075e54), accentColor: Color(0xff25d366)),
      home: WhatsAppHome(cameras),
    );
  }
}

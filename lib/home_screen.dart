import 'package:flutter/material.dart';
import 'package:flutter_firebase_notifications/notifications_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  NotificationsServices notificationsServices = NotificationsServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationsServices.requestNotificationPermission();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications Servces'),
      ),
    );
  }
}

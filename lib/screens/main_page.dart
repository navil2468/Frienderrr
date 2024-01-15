// lib/screens/main_page.dart

import 'package:flutter/material.dart';
import 'package:frienderr/screens/chat_screen.dart';
import 'user_profile.dart';
import 'home_tab.dart';
import 'chat_screen.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Frienderr'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Chat'),
              Tab(text: 'My Profile'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeTab(),
            ChatScreen(),
            UserProfile(),
          ],
        ),
      ),
    );
  }
}

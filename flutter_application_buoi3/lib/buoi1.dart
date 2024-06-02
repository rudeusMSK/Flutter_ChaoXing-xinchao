import 'package:flutter/material.dart';

// StatelessWidget hay StatefullWidget ?
class BaitapBuoi1 extends StatelessWidget {
  const BaitapBuoi1({super.key});

// ctrl+. để tạo widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // SafeArea là phần màn hình trừ đi phần taskbar
      home: SafeArea(
        // Scaffold là phần màn hình
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: const Text('hê hê'),
          ),
          body: const Center(
            //  các layout của child: https://docs.flutter.dev/ui/widgets/layout
            child: Text('Hello = xin chèo !')
            ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

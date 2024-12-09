import 'package:flutter/material.dart';

class TimelinePage extends StatelessWidget {
  final List<Map<String, String>> events = [
    {"year": "2003", "event": "出生於彰化"},
    {"year": "2021", "event": "進入大學，主修電機工程"},
    {"year": "2025", "event": "於大學畢業，開始職業生涯"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("時間軸"),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(event['year']![0]),
            ),
            title: Text(event['year']!),
            subtitle: Text(event['event']!),
          );
        },
      ),
    );
  }
}

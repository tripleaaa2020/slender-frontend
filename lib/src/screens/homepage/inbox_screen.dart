import 'package:flutter/material.dart';
import '../../../utils/styles.dart';

class InboxScreen extends StatefulWidget {
  static const String id = 'inbox_screen';
  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Inbox Screen"),
    );
  }
}
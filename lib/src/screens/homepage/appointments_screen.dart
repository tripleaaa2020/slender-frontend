import 'package:flutter/material.dart';
import '../../../utils/styles.dart';

class AppointmentsScreen extends StatefulWidget {
  static const String id = 'appointments_screen';
  @override
  _AppointmentsScreenState createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Appointments Screen"),
    );
  }
}
import 'package:flutter/material.dart';
import '../../../utils/styles.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const cardSelectionItems = [
    {
      'cardTitle': 'FIND A SLENDER',
      'cardColor': const Color.fromRGBO(124, 42, 137, 1)
    },
    {
      'cardTitle': 'SLENDERS NEARBY',
      'cardColor': const Color.fromRGBO(56, 44, 144, 1)
    },
    {
      'cardTitle': 'FIND A SLENDER',
      'cardColor': const Color.fromRGBO(120, 72, 199, 1)
    },
  ];

  @override
  Widget build(BuildContext context) {
    print("Home Screen");
    return Container(
      color: kSlenderLightPurple,
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: cardSelectionItems
            .map((item) =>
                _homeSelectionCardWidget(item['cardTitle'], item['cardColor']))
            .toList(),
      ),
    );
  }

  Widget _homeSelectionCardWidget(
    String cardTitle,
    Color cardColor,
  ) {
    return InkWell(
      onTap: () => {print(cardTitle + " Tapped")},
      child: Card(
        color: kSlenderLightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 5.0,
        child: Container(
          padding: EdgeInsets.all(8.0),
          width: double.infinity,
          height: 80.0,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            cardTitle,
            style: TextStyle(
              color: cardColor,
              letterSpacing: -0.5,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

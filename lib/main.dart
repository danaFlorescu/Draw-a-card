import 'package:flutter/material.dart';
import 'package:playing_cards/playing_cards.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFA000),
        appBar: AppBar(
          backgroundColor: Color(0xFFFFC107),
          title: Text(
            'Choose a card',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: MyHomePage(),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: PlayingCardView(
            card: PlayingCard(Suit.clubs, CardValue.nine),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {},
          child: Text(
            'Draw a card!',
            style: TextStyle(
              color: Color(0xFF212121),
            ),
          ),
        ),
      ],
    );
  }
}

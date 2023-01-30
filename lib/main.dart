import 'package:flutter/material.dart';
import 'package:playing_cards/playing_cards.dart';
import 'dart:math';

const List<Suit> suitValues = [
  Suit.diamonds,
  Suit.clubs,
  Suit.hearts,
  Suit.spades
];
const List<CardValue> cardValues = [
  CardValue.ace,
  CardValue.two,
  CardValue.three,
  CardValue.four,
  CardValue.five,
  CardValue.six,
  CardValue.seven,
  CardValue.eight,
  CardValue.nine,
  CardValue.ten,
  CardValue.jack,
  CardValue.queen,
  CardValue.king
];

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData.light(),
      home: MyHome(),
    ),
  );
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Choose a card'),
        ),
        body: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int randomForSuit = Random().nextInt(4);
  int randomForCardsValues = Random().nextInt(13);

  bool showBackVar = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: PlayingCardView(
              elevation: 15.0,
              card: PlayingCard(
                  suitValues[randomForSuit], cardValues[randomForCardsValues]),
              showBack: showBackVar),
        ),
        SizedBox(
          width: 200,
          height: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // primary: Color(0xFFFBC252),
              elevation: 10,
              //shadowColor: Colors.black,
            ),
            onPressed: () {
              setState(() {
                showBackVar = false;
                randomForSuit = Random().nextInt(4);
                randomForCardsValues = Random().nextInt(13);
              });
            },
            child: Text(
              'Draw a card',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:playing_cards/playing_cards.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: MyHome(),
    ),
  );
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFB100),
        appBar: AppBar(
          title: Text('Choose a card'),
          backgroundColor: Color(0xffFBC252),
        ),
        body: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var suitValues = [Suit.diamonds, Suit.clubs, Suit.hearts, Suit.spades];
  var cardValues = [
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

  int randomForSuit = Random().nextInt(4);
  int randomForCardsValues = Random().nextInt(13);

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
          ),
        ),
        SizedBox(
          width: 200,
          height: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFBC252),
              elevation: 10,
              shadowColor: Colors.black,
            ),
            onPressed: () {
              setState(() {
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

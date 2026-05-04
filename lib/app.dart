import 'package:card_with_progress_bar/features/screens/my_card_screen.dart';
import 'package:flutter/material.dart';

class CardWithProgressBar extends StatefulWidget {
  const CardWithProgressBar({super.key});

  @override
  State<CardWithProgressBar> createState() => _CardWithProgressBarState();
}

class _CardWithProgressBarState extends State<CardWithProgressBar> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCardScreen(),
    );
  }
}

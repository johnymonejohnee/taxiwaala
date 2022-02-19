import 'package:flutter/material.dart';

class RatingsTabPage extends StatefulWidget {
  RatingsTabPage({Key? key}) : super(key: key);

  @override
  State<RatingsTabPage> createState() => _RatingsTabPageState();
}

class _RatingsTabPageState extends State<RatingsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Ratings Page"),
    );
  }
}

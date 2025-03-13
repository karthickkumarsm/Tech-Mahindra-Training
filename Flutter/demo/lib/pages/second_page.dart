import 'package:flutter/material.dart';
import '../widgets/countdown.dart';



class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: CountDown(), // Call the CountDown widget here
      ),
    );
  }
}
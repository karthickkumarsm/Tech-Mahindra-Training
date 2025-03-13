import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  double _price = 5000;

  void _increasePrice() {
    setState(() {
      _price += 100;
    });
  }

  void _decreasePrice() {
    setState(() {
      _price -= 100;
    });
  }

  void _multiplyPrice() {
    setState(() {
      _price = (_price * 1.2).roundToDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color:Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Price: $_price',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _increasePrice,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  fixedSize: const Size.fromWidth(150)
                ),
                child: const Text('Increase Price'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                  backgroundColor: Colors.yellowAccent,
                   shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  fixedSize: const Size.fromWidth(150)
                ),
                onPressed: _decreasePrice,
                child: const Text('Decrease Price'),
              ),
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orangeAccent,
                   shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  fixedSize: const Size.fromWidth(150)
                ),
                onPressed: _multiplyPrice,
                child: const Text('Multiply Price'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
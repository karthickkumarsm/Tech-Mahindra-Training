import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
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
        title: Text('Third Page'),
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
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _increasePrice,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  fixedSize: Size.fromWidth(150)
                ),
                child: Text('Increase Price'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blueGrey,
                  backgroundColor: Colors.yellowAccent,
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  fixedSize: Size.fromWidth(150)
                ),
                onPressed: _decreasePrice,
                child: Text('Decrease Price'),
              ),
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orangeAccent,
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  fixedSize: Size.fromWidth(150)
                ),
                onPressed: _multiplyPrice,
                child: Text('Multiply Price'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _totalDots = 5;
  int _currentPosition = 0;

  int _validPosition(int position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1;
    return position;
  }

  void _updatePosition(int position) {
    setState(() => _currentPosition = _validPosition(position));
  }

  Widget _buildRow(List<Widget> widgets) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widgets,
      ),
    );
  }

  String getPrettyCurrPosition() {
    return (_currentPosition + 1.0).toStringAsPrecision(3);
  }

  @override
  Widget build(BuildContext context) {
    final decorator = DotsDecorator(
      activeColor: Colors.red,
      size: const Size.square(15.0),
      activeSize: const Size.square(35.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    );

    const titleStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dots indicator example'),
        ),
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16.0),
            children: [
              _buildRow([
                Text(
                  'Current position ${getPrettyCurrPosition()} / $_totalDots',
                  style: titleStyle,
                ),
              ]),
              _buildRow([
                SizedBox(
                  width: 300.0,
                  child: Slider(
                    value: _currentPosition.toDouble(),
                    max: (_totalDots - 1).toDouble(),
                    onChanged: (val) {
                      _updatePosition(val.round());
                    },
                  ),
                ),
              ]),
              _buildRow([
                FloatingActionButton(
                  child: const Icon(Icons.remove),
                  onPressed: () {
                    _updatePosition(max(--_currentPosition, 0));
                  },
                ),
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    _updatePosition(min(
                      ++_currentPosition,
                      _totalDots,
                    ));
                  },
                )
              ]),
              _buildRow([
                Column(
                  children: [
                    const Text('Vertical', style: titleStyle),
                    const SizedBox(height: 16.0),
                    DotsIndicator(
                      dotsCount: _totalDots,
                      position: _currentPosition,
                      axis: Axis.vertical,
                      decorator: decorator,
                      onTap: (pos) {
                        setState(() => _currentPosition = pos);
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Vertical reversed', style: titleStyle),
                    const SizedBox(height: 16.0),
                    DotsIndicator(
                      dotsCount: _totalDots,
                      position: _currentPosition,
                      axis: Axis.vertical,
                      reversed: true,
                      decorator: decorator,
                    ),
                  ],
                ),
              ]),
              _buildRow([
                const Text('Horizontal', style: titleStyle),
              ]),
              _buildRow([
                const Text('Individual custom dot'),
                DotsIndicator(
                  dotsCount: _totalDots,
                  position: _currentPosition,
                  decorator: DotsDecorator(
                    colors: [
                      Colors.red,
                      Colors.blue,
                      Colors.green,
                      Colors.yellow,
                      Colors.cyan,
                    ].reversed.toList(),
                    activeColors: [
                      Colors.red,
                      Colors.blue,
                      Colors.green,
                      Colors.yellow,
                      Colors.cyan,
                    ],
                    sizes: [
                      const Size.square(40.0),
                      const Size.square(35.0),
                      const Size.square(30.0),
                      const Size.square(25.0),
                      const Size.square(20.0),
                    ],
                    activeSizes: [
                      const Size.square(20.0),
                      const Size.square(25.0),
                      const Size.square(30.0),
                      const Size.square(35.0),
                      const Size.square(40.0),
                    ],
                    shapes: [
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                    ],
                    activeShapes: [
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                    ],
                  ),
                ),
              ]),
              _buildRow([
                const Text('Reversed'),
                DotsIndicator(
                  dotsCount: _totalDots,
                  position: _currentPosition,
                  reversed: true,
                  decorator: decorator,
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
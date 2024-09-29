import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class DotIndacitor extends StatefulWidget {
  const DotIndacitor({super.key , required this.currentIndexPage});

  final int currentIndexPage;

  @override
  DotIndacitorState createState() => DotIndacitorState();
}


class DotIndacitorState extends State<DotIndacitor> {
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: widget.currentIndexPage,
      decorator: DotsDecorator(
        color: Colors.grey[300]!,
        activeColor: Colors.blue,
        size: const Size.square(9.0),
        activeSize: const Size(32, 9.0),
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }
}

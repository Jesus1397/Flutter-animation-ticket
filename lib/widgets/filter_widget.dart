import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  final Size size;

  const FilterWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      color: const Color.fromARGB(128, 34, 81, 110),
    );
  }
}

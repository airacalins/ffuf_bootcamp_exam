import 'package:flutter/material.dart';

class RectangularSlantingEnd extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 0.85, 0);
    path.lineTo(size.width * 0.95, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class RectangularSlantingEndClipper extends StatelessWidget {
  final String title;

  const RectangularSlantingEndClipper(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RectangularSlantingEnd(),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          border: Border(
            left: BorderSide(
              color: Color(0xFF8465FF),
              width: 3,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
            right: 20.0,
            top: 5.0,
            bottom: 5.0,
          ),
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

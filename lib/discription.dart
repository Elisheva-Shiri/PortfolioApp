import 'package:flutter/material.dart';
class Discription extends StatefulWidget {
  const Discription({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  State<Discription> createState() => _DiscriptionState();
}

class _DiscriptionState extends State<Discription> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.5,
        height: size.height * 0.5,

        child: Stack(
            alignment: Alignment.center,

            children: [
              Image.asset(widget.image),
            ]
        ),
    );
  }
}

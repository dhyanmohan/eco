import 'package:flutter/material.dart';

class donate extends StatelessWidget {
  const donate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('assets/donate.jpg'),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('donate'),
          ),
        )
      ],
    );
  }
}

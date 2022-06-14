import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Image.asset('assets/env.jpg'),
          //height: 300,
          //width: 450,
          padding: EdgeInsets.all(10),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Text(
                'Trending',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 93, 199, 7),
                ),
              ),
              Icon(Icons.trending_up),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Card(
                  elevation: 10,
                  child: SizedBox(
                    width: 400,
                    height: 200,
                    child: Text('dhyan'),
                  )),
              Card(
                  elevation: 10,
                  child: SizedBox(
                    width: 400,
                    height: 200,
                    child: Text('dhyan'),
                  )),
              Card(
                  elevation: 10,
                  child: SizedBox(
                    width: 400,
                    height: 200,
                    child: Text('dhyan'),
                  )),
            ],
          ),
        )
      ],
    );
  }
}

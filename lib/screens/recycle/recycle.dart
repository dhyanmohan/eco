import 'package:flutter/material.dart';

class recycle extends StatelessWidget {
  const recycle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 30, 0, 20),
          alignment: Alignment.topLeft,
          child: Text(
            'Categories',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Row(
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.white,
                margin: EdgeInsets.all(13),
                elevation: 10,
                
                    child: Stack(
                       fit: StackFit.expand,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      children: [
                        Image.asset(
                          'assets/plastic.jpg',
                          //fit: BoxFit.cover,
                        ),
                        Text('plastic'),
                      ],
                    )),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.black,
                margin: EdgeInsets.all(13),
                elevation: 10,
                child: SizedBox(
                    width: 190,
                    height: 300,
                    child: Image.asset(
                      'assets/glass.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.black,
                margin: EdgeInsets.all(13),
                elevation: 10,
                child: SizedBox(
                    width: 190,
                    height: 300,
                    child: Image.asset(
                      'assets/metal.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.black,
                margin: EdgeInsets.all(13),
                elevation: 10,
                child: SizedBox(
                    width: 190,
                    height: 300,
                    child: Image.asset(
                      'assets/wood.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Test(),
    ),
  );
}

// class Ludo extends StatelessWidget {
//   const Ludo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ludo APP'),
//         centerTitle: true,
//         backgroundColor: Colors.blue[400],
//       ),
//       body: Center(
//         child: Row(
//           children: [
//             Expanded(
//                 child: InkWell(
//                     onTap: () {
//                       print('taped on ludo');
//                     },
//                     child: Image.asset('images/dice1.png'))),
//             Expanded(child: Image.asset('images/dice2.png')),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int ludonumber = 1;
  int ludonumber2=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ludo APP'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(
                    () {
                      ludonumber = Random().nextInt(6) + 1;
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$ludonumber.png'),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    ludonumber2 = Random().nextInt(5) + 1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice$ludonumber2.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

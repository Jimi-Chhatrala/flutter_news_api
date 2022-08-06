import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  int number = 1;

   int onClick() {
    return number++;
  }

  @override
  Widget build(BuildContext context) {
    // return Container();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(25),
              color: Colors.yellow,
              child: Text("$number"),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.red,
                  child: Text('one'),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.green,
                  child: Text('two'),
                  padding: EdgeInsets.all(40),
                ),
                Container(
                  color: Colors.blue,
                  child: Text('tree'),
                  padding: EdgeInsets.all(60),
                ),
              ],
            ),
            VerticalDivider(
              color: Colors.purple,
              width: 3,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  child: Text('one'),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.green,
                  child: Text('two'),
                  padding: EdgeInsets.all(40),
                ),
                Container(
                  color: Colors.yellow,
                  child: Text('tree'),
                  padding: EdgeInsets.all(60),
                ),
                // Divider(color: Colors.black, height: 1,),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('Click'),
          onPressed: () {
            setState(() {
              onClick();
              // number = number + 1;
            });
          },
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.red,
                  child: Text('one'),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.yellow,
                  child: Text('two'),
                  padding: EdgeInsets.all(40),
                ),
                Container(
                  color: Colors.green,
                  child: Text('tree'),
                  padding: EdgeInsets.all(60),
                ),
              ],
            ),
            VerticalDivider(
              color: Colors.purple,
              width: 3,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  child: Text('one'),
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.yellow,
                  child: Text('two'),
                  padding: EdgeInsets.all(40),
                ),
                Container(
                  color: Colors.green,
                  child: Text('tree'),
                  padding: EdgeInsets.all(60),
                ),
                // Divider(color: Colors.black, height: 1,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("MyApp"),
//             backgroundColor: Colors.yellow,
//           ),
//           body: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [

//             ])),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   static const String _title = 'Flutter Vertical Divider Example 2';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: MyStatelessWidget(),
//       ),
//     );
//   }
// }

// class MyStatelessWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Text('May 1, 2021'),
//           SizedBox(
//             height: 655,
//             child: VerticalDivider(
//               color: Colors.red,
//               thickness: 3,
//               indent: 5,
//               endIndent: 0,
//               width: 20,
//             ),
//           ),
//           // Text('Saturday'),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// /// This is the main application widget.
// class MyApp extends StatelessWidget {
//   static const String _title = 'MyApp';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: MyStatelessWidget(),
//       ),
//     );
//   }
// }

// class MyStatelessWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.topCenter,
//       child: Container(
//         height: 670,
//         padding: const EdgeInsets.all(10),
//         child: VerticalDivider(
//           color: Colors.black54,
//           thickness: 3,
//           indent: 20,
//           endIndent: 0,
//           width: 20,
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
// Widget build(BuildContext context){
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("MyApp"),
//         ),
//         body: Column(children: [Column(children: [Container(child: Text("Hello Jimi"),color: Colors.blue,padding: EdgeInsets.all(20),
//         ),
//         Container(child: Text("Chhatrala"),color: Colors.blueAccent,padding: EdgeInsets.all(30),
//         )
//         ,)],)],)
//   )
// }
// }

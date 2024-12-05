// import 'package:flutter/material.dart';

// void main() => runApp(const MaterialApp(
//       home: Home(),
//     ));

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Carpe Diem',
//               style: TextStyle(
//                 color: Colors.grey[200],
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'PlayfairDisplay',
//               )),
//           centerTitle: true,
//           backgroundColor: Colors.blue[600],
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               flex: 3,
//               child: Image.asset('girl.jpeg')
//               ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: const EdgeInsets.all(30.0),
//                 color: Colors.cyan,
//                 child: const Text('1'),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: const EdgeInsets.all(30.0),
//                 color: Colors.pinkAccent,
//                 child: const Text('2'),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: const EdgeInsets.all(30.0),
//                 color: Colors.amber,
//                 child: const Text('3'),
//               ),
//             )
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: (){},
//         backgroundColor: Colors.blue[600],
//         child: const Text('Click',style: TextStyle(color: Colors.white),),
//         ),
//         );
//   }
// }



import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Carpe Diem',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'PlayfairDisplay',
              )),
          centerTitle: true,
          backgroundColor: Colors.blue[600],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.blue[600],
        child: const Text('Click',style: TextStyle(color: Colors.white),),
        ),
        );
  }
}

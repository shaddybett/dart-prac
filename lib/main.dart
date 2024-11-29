import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
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
//                 fontFamily: 'PlayFairDisplay',
//               )),
//           centerTitle: true,
//           backgroundColor: Colors.blue[600],
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: (){
//               print('Button clicked');
//             },
//             child: Text('click me',style: TextStyle(color: Colors.grey[100],fontSize: 20.0,fontFamily: 'PlayFairDisplay',fontWeight: FontWeight.normal),),
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blue[400],
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//             )
//           )
//         ),
//         floatingActionButton: FloatingActionButton(
//             onPressed: () {},
//             child: Text('Click',
//                 style: TextStyle(
//                     color: Colors.grey[100],
//                     fontSize: 10.0,
//                     fontFamily: 'PlayFairDisplay',
//                     fontWeight: FontWeight.normal)),
//             backgroundColor: Colors.blue[400]));
//   }
// }



// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       home: Home(),
//     ));

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange[900],
//       appBar: AppBar(
//         title: Text(
//           'Moringa School',
//           style: TextStyle(
//             color: Colors.grey[100],
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//             fontFamily: 'PlayFairDisplay',
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.grey[400],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // First Card
//             SizedBox(
//               width: double.infinity,
//               child: Card(
//                 color: const Color.fromARGB(255, 82, 236, 21),
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(40.0),
//                   child: Center(
//                     child: Text(
//                       'Education is the key',
//                       style: TextStyle(
//                         color: Colors.grey[100],
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.normal,
//                         fontFamily: 'PlayFairDisplay',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             SizedBox(
//               width: double.infinity,
//               child: Card(
//                 color: const Color.fromARGB(255, 82, 236, 21),
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(40.0),
//                   child: Center(
//                     child: Text(
//                       'What we do',
//                       style: TextStyle(
//                         color: Colors.grey[100],
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.normal,
//                         fontFamily: 'PlayFairDisplay',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 40),
//             SizedBox(
//               width: double.infinity,
//               child: TextField(
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(),
//                   labelText: 'First name',
//                   hintText: 'Type here...',
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   print("Form submitted!");
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   padding:
//                       EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
//                 ),
//                 child: Text(
//                   'Submit',
//                   style: TextStyle(fontSize: 16.0, color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Colors.grey[600],
//         child: Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

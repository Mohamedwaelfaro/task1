import 'package:flutter/material.dart';

void main() {
  runApp(Task1());
}

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   leading: Icon(Icons.arrow_back_sharp),
        //   actions: [Icon(Icons.favorite_sharp)],
        // ),

        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'imgs/sofa.png',
                  height: 300,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Room Sofa',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE7E7E7),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (counter > 0) {
                            counter--;
                          }
                        });
                      },
                      icon: Icon(Icons.remove),
                    ),
                  ),
                  Text(
                    '$counter',
                    style: TextStyle(
                      fontSize: 20,
                      backgroundColor: Color(0xffE7E7E7),
                      height: 2.5,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE7E7E7),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      icon: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: EdgeInsets.only(bottom: 225),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('imgs/Ellipse 1.png'),
                    Image.asset('imgs/Ellipse 2.png'),
                    Image.asset('imgs/Ellipse 3.png'),
                  ],
                ),
              ),
              Text(
                'Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused ue to the furniture help us relax for a longer time.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(test());
// }

// class test extends StatefulWidget {
//   const test({super.key});

//   @override
//   State<test> createState() => _testState();
// }

// class _testState extends State<test> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Sofa Shop'),
//           backgroundColor: Colors.white,
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back, color: Colors.black),
//             onPressed: () {},
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.favorite_border, color: Colors.black),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Image.asset(
//                   'imgs/sofa.png',
//                   height: 200,
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Room Sofa',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Row(
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.blue,
//                     radius: 8,
//                   ),
//                   SizedBox(width: 8),
//                   CircleAvatar(
//                     backgroundColor: Colors.brown,
//                     radius: 8,
//                   ),
//                   SizedBox(width: 8),
//                   CircleAvatar(
//                     backgroundColor: Colors.black,
//                     radius: 8,
//                   ),
//                 ],
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused use to the furniture help us relax for a longer time.',
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey[700],
//                 ),
//               ),
//               SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.remove),
//                         onPressed: () {},
//                       ),
//                       Text(
//                         '1',
//                         style: TextStyle(fontSize: 18),
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.add),
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Text(
//                 '¥2500',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 16),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: Text('Add to cart'),
//                   style: ElevatedButton.styleFrom(
//                     iconColor: Colors.blue,
//                     padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
//                     textStyle: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

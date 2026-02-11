import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    // var arrayName = [
    //   'Muhammad Shahid',
    //   'Rehana Shahid',
    //   'Mariyam Shahid',
    //   'Abdul Ghani',
    //   'Saad Chohan',
    //   'Usman',
    //   'Talha Chohan',
    //   'Hammad Chohan',
    //   'Abrish Shahid',
    //   'Anum Shahid',
    // ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Saad Chauhan Portfolio")),
      ),
      // ListView.separated(
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       leading: Text(
      //         "${index + 1}",
      //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      //       ),
      //       title: Text(
      //         arrayName[index],
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //       subtitle: Text("This is subtitle for ${arrayName[index]}"),
      //       trailing: Icon(Icons.arrow_forward_ios, size: 20),
      //     );
      // return Row(
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.all(1),
      //       child: Column(
      //         children: [
      //           Text(
      //             arrayName[index],
      //             style: TextStyle(
      //               fontSize: 21,
      //               fontWeight: FontWeight.w500,
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.all(1),
      //             child: Text(
      //               arrayName[index],
      //               style: TextStyle(
      //                 fontSize: 11,
      //                 fontWeight: FontWeight.w500,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(1),
      //       child: Text(
      //         arrayName[index],
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //       ),
      //     ),
      //   ],
      // );
      //   },
      //   scrollDirection: Axis.vertical,
      //   itemCount: arrayName.length,
      //   separatorBuilder: (context, index) {
      //     return (Divider(color: Colors.black, height: 20, thickness: 1));
      //   },
      // ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Container(
              height: 150,
              width: 150,
              color: Colors.red,
              margin: EdgeInsets.only(bottom: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Container(
              height: 150,
              width: 150,
              color: Colors.green,
              margin: EdgeInsets.only(bottom: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Container(
              height: 150,
              width: 150,
              color: Colors.blue,
              margin: EdgeInsets.only(bottom: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
              margin: EdgeInsets.only(bottom: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(8.0),
            child: Container(
              height: 150,
              width: 150,
              color: Colors.orange,
              margin: EdgeInsets.only(bottom: 16.0),
            ),
          ),
        ],
      ),

      // Padding(
      //   padding: EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: EdgeInsets.all(16.0),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.purple,
      //                   margin: EdgeInsets.all(8.0),
      //                 ),
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.teal,
      //                   margin: EdgeInsets.all(8.0),
      //                 ),
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.cyan,
      //                   margin: EdgeInsets.all(8.0),
      //                 ),
      //                 Container(
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.amber,
      //                   margin: EdgeInsets.all(8.0),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 150,
      //           color: Colors.red,
      //           margin: EdgeInsets.only(bottom: 16.0),
      //         ),
      //         Container(
      //           height: 150,
      //           color: Colors.green,
      //           margin: EdgeInsets.only(bottom: 16.0),
      //         ),
      //         Container(
      //           height: 150,
      //           color: Colors.blue,
      //           margin: EdgeInsets.only(bottom: 16.0),
      //         ),
      //         Container(
      //           height: 150,
      //           color: Colors.yellow,
      //           margin: EdgeInsets.only(bottom: 16.0),
      //         ),
      //         Container(
      //           height: 150,
      //           color: Colors.orange,
      //           margin: EdgeInsets.only(bottom: 16.0),
      //         ),
      //         Container(
      //           height: 150,
      //           color: Colors.red,
      //           margin: EdgeInsets.only(bottom: 16.0),
      //         ),
      //         Container(
      //           height: 150,
      //           color: Colors.green,
      //           margin: EdgeInsets.only(bottom: 16.0),
      //         ),
      //         Container(
      //           height: 150,
      //           color: Colors.blue,
      //           margin: EdgeInsets.only(bottom: 16.0),
      //         ),
      //         Container(
      //           height: 150,
      //           color: Colors.yellow,
      //           margin: EdgeInsets.only(bottom: 16.0),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // body: Center(
      //   child: Container(
      //     width: 400,
      //     height: 800,
      //     color: Colors.blue,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 Text('A1', style: TextStyle(fontSize: 25)),
      //                 Text('A2', style: TextStyle(fontSize: 25)),
      //               ],
      //             ),
      //             Column(
      //               children: [
      //                 ElevatedButton(
      //                   onPressed: () {
      //                     print("Elevated Button");
      //                   },
      //                   child: Text("Click Here!"),
      //                 ),
      //                 ElevatedButton(
      //                   onPressed: () {
      //                     print("Elevated Button");
      //                   },
      //                   child: Text("Click Here!"),
      //                 ),
      //               ],
      //             ),
      //             Text('R1', style: TextStyle(fontSize: 25)),
      //             Text('R2', style: TextStyle(fontSize: 25)),
      //             Text('R3', style: TextStyle(fontSize: 25)),
      //             Text('R4', style: TextStyle(fontSize: 25)),
      //             Text('R5', style: TextStyle(fontSize: 25)),
      //           ],
      //         ),
      //         Text('C1', style: TextStyle(fontSize: 25)),
      //         Text('C2', style: TextStyle(fontSize: 25)),
      //         Text('C3', style: TextStyle(fontSize: 25)),
      //         Text('C4', style: TextStyle(fontSize: 25)),
      //         Text('C5', style: TextStyle(fontSize: 25)),
      //         ElevatedButton(
      //           onPressed: () {
      //             print("Elevated Button");
      //           },
      //           child: Text('Click Here!'),
      //         ),
      //         Column(
      //           children: [
      //             InkWell(
      //               onTap: () {
      //                 print("InkWell tapped");
      //               },
      //               onLongPress: () => print("InkWell long pressed"),
      //               onDoubleTap: () => print("InkWell double tapped"),
      //               child: Container(
      //                 width: 200,
      //                 height: 200,
      //                 color: Colors.red,
      //                 margin: EdgeInsets.all(100),
      //                 child: Center(
      //                   child: InkWell(
      //                     onTap: () {
      //                       print("Text InkWell Widget tapped");
      //                     },
      //                     child: Text(
      //                       "Tap Me",
      //                       style: TextStyle(fontSize: 24, color: Colors.white),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

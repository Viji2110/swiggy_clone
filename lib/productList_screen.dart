// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// class ProductListScreen extends StatelessWidget {
//   const ProductListScreen({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Container(
//           height: 48,
//           width: 48,
//           margin: const EdgeInsets.only(top: 20, left: 15),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(7),
//           ),
//         ),
//         title: const Text(
//           'Product details Screen',
//           style: TextStyle(
//             fontFamily: 'Plus Jakarta Sans',
//             fontSize: 18.0,
//             fontWeight: FontWeight.w600,
//             color: Color(0xFF2C2C2C),
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Add GridView here
//             Expanded(
//               child: ListView(
//                 // Number of columns
//                 children: List.generate(
//                   6, // Number of items in the grid
//                   (index) {
//                     return GestureDetector(
//                       onTap: () {
//                         // Navigate to ProductDetailsScreen
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const ProductDetailsScreen(),
//                           ),
//                         );
//                       },
//                       child: Card(
//                         margin: const EdgeInsets.all(8.0),
//                         child: Center(
//                           child: Text(
//                             'Item $index',
//                             style: const TextStyle(fontSize: 20.0),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             // Button below the grid
//             Row(
//               children: [
//                 Expanded(
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('Nav Button'),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

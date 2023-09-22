import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'List of Accounts',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_right_rounded),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Cash',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Rp.000.000.000,00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 10,
                ),
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.red.shade800,
                      Colors.deepOrange,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add_box_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Jarak vertikal sebelum box circular

          // Container baru untuk diagram lingkaran
          Container(
            padding: EdgeInsets.all(20), // Padding untuk judul
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0), // Bentuk circular
              color: Colors.blue, // Warna background container
            ),
            child: Column(
              // Menggunakan Column untuk mengelompokkan teks dan ikon
              children: [
                Row(
                  // Baris pertama berisi teks dan ikon rata kiri
                  children: [
                    Expanded(
                      child: Text(
                        'Expenses Structure', // Judul Expenses Structure
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(
                      // Ikone "titik tiga vertikal" (more vertical) rata kanan
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 10), // Jarak vertikal sebelum diagram lingkaran
                AspectRatio(
                  aspectRatio: 1.0, // Menjaga rasio aspek diagram tetap 1:1
                  child: SfCircularChart(
                    series: <CircularSeries>[
                      PieSeries<PieData, String>(
                        dataSource: [
                          PieData('Expense 1', 30), // Misalnya, 30% biaya 1
                          PieData('Expense 2', 40), // Misalnya, 40% biaya 2
                          // Tambahkan data series lain jika diperlukan
                        ],
                        xValueMapper: (PieData data, _) => data.category,
                        yValueMapper: (PieData data, _) => data.value,
                        dataLabelSettings: DataLabelSettings(isVisible: true), // Tampilkan label data
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PieData {
  final String category;
  final double value;

  PieData(this.category, this.value);
}

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: 20,
//         vertical: 10,
//       ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'List of Accounts',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.arrow_right_rounded),
//               ),
//             ],
//           ),
//           SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 padding: EdgeInsets.all(10),
//                 height: 70,
//                 width: 200,
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(15),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Cash',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                     Text(
//                       'Rp.000.000.000,00',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                         color: Colors.white,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Spacer(),
//               Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 35,
//                   vertical: 10,
//                 ),
//                 height: 70,
//                 width: 140,
//                 decoration: BoxDecoration(
//                   color: Colors.deepOrange,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(15),
//                   ),
//                   gradient: LinearGradient(
//                     colors: [
//                       Colors.red.shade800,
//                       Colors.deepOrange,
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Add',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                         color: Colors.white,
//                       ),
//                     ),
//                     Spacer(),
//                     Icon(
//                       Icons.add_box_rounded,
//                       color: Colors.white,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 20), // Jarak vertikal sebelum box circular

//           // Container baru untuk diagram lingkaran
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             padding: EdgeInsets.all(20), // Padding untuk judul
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15.0), // Bentuk circular
//               color: Colors.blue, // Warna background container
//             ),
//             child: Column(
//               // Menggunakan Column untuk mengelompokkan teks dan ikon
//               children: [
//                 Row(
//                   // Baris pertama berisi teks dan ikon rata kiri
//                   children: [
//                     Expanded(
//                       child: Text(
//                         'Expenses Structure', // Judul Expenses Structure
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Icon(
//                       // Ikone "titik tiga vertikal" (more vertical) rata kanan
//                       Icons.more_vert,
//                       color: Colors.white,
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10), // Jarak vertikal sebelum diagram lingkaran
//                 AspectRatio(
//                   aspectRatio: 1.0, // Menjaga rasio aspek diagram tetap 1:1
//                   child: SfCircularChart(
//                     series: <CircularSeries>[
//                       PieSeries<PieData, String>(
//                         dataSource: [
//                           PieData('Expense 1', 30), // Misalnya, 30% biaya 1
//                           PieData('Expense 2', 40), // Misalnya, 40% biaya 2
//                           // Tambahkan data series lain jika diperlukan
//                         ],
//                         xValueMapper: (PieData data, _) => data.category,
//                         yValueMapper: (PieData data, _) => data.value,
//                         dataLabelSettings: DataLabelSettings(isVisible: true), // Tampilkan label data
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),

//         ],
//       ),
//     );
//   }
// }

// class PieData {
//   final String category;
//   final double value;

//   PieData(this.category, this.value);
// }

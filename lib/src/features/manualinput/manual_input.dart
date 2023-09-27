import 'package:flutter/material.dart';

class ManualInputPage extends StatefulWidget {
  @override
  _ManualInputPageState createState() => _ManualInputPageState();
}

class _ManualInputPageState extends State<ManualInputPage> {
  String selectedAccountType = 'General';
  Color selectedColor = Colors.red;

  void _showAccountTypeDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Select Account Type',
            style: TextStyle(fontSize: 16),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('General'),
                onTap: () {
                  setState(() {
                    selectedAccountType = 'General';
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('Private'),
                onTap: () {
                  setState(() {
                    selectedAccountType = 'Private';
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showColorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Select Color',
            style: TextStyle(fontSize: 16),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Container(
                  width: 24,
                  height: 24,
                  color: Colors.red,
                ),
                onTap: () {
                  setState(() {
                    selectedColor = Colors.red;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Container(
                  width: 24,
                  height: 24,
                  color: Colors.green,
                ),
                onTap: () {
                  setState(() {
                    selectedColor = Colors.green;
                  });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Container(
                  width: 24,
                  height: 24,
                  color: Colors.blue,
                ),
                onTap: () {
                  setState(() {
                    selectedColor = Colors.blue;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New account'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Account Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Bank Account Number',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Account Type',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: _showAccountTypeDialog,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Text(selectedAccountType),
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Currency',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DropdownButton<String>(
                value: 'IDR',
                onChanged: (String? newValue) {},
                items: <String>['IDR', 'USD', 'EUR'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 15),
              Text(
                'Initial value',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DropdownButton<String>(
                value: 'IDR',
                onChanged: (String? newValue) {},
                items: <String>['IDR', 'USD', 'EUR'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 15),
              Text(
                'Color',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: _showColorDialog,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: 24,
                    height: 24,
                    color: selectedColor,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Exclude from statistics?'),
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                ),
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';

// class ManualInputPage extends StatefulWidget {
//   @override
//   _ManualInputPageState createState() => _ManualInputPageState();
// }

// String amountInput = '';

// class _ManualInputPageState extends State<ManualInputPage> {
//   String selectedAccountType = 'General';
//   Color selectedColor = Colors.red;

//   void _showAccountTypeDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(
//             'Select Account Type',
//             style: TextStyle(fontSize: 16),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               ListTile(
//                 title: Text('General'),
//                 onTap: () {
//                   setState(() {
//                     selectedAccountType = 'General';
//                   });
//                   Navigator.of(context).pop();
//                 },
//               ),
//               ListTile(
//                 title: Text('Private'),
//                 onTap: () {
//                   setState(() {
//                     selectedAccountType = 'Private';
//                   });
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void _showColorDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(
//             'Select Color',
//             style: TextStyle(fontSize: 16),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               ListTile(
//                 title: Container(
//                   width: 24,
//                   height: 24,
//                   color: Colors.red,
//                 ),
//                 onTap: () {
//                   setState(() {
//                     selectedColor = Colors.red;
//                   });
//                   Navigator.of(context).pop();
//                 },
//               ),
//               ListTile(
//                 title: Container(
//                   width: 24,
//                   height: 24,
//                   color: Colors.green,
//                 ),
//                 onTap: () {
//                   setState(() {
//                     selectedColor = Colors.green;
//                   });
//                   Navigator.of(context).pop();
//                 },
//               ),
//               ListTile(
//                 title: Container(
//                   width: 24,
//                   height: 24,
//                   color: Colors.blue,
//                 ),
//                 onTap: () {
//                   setState(() {
//                     selectedColor = Colors.blue;
//                   });
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void _showCalculatorDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(
//             'Calculator',
//             style: TextStyle(fontSize: 16),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Text(
//                 amountInput,
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               GridView.count(
//                 crossAxisCount: 3,
//                 shrinkWrap: true,
//                 children: [
//                   _buildCalculatorButton('1'),
//                   _buildCalculatorButton('2'),
//                   _buildCalculatorButton('3'),
//                   _buildCalculatorButton('4'),
//                   _buildCalculatorButton('5'),
//                   _buildCalculatorButton('6'),
//                   _buildCalculatorButton('7'),
//                   _buildCalculatorButton('8'),
//                   _buildCalculatorButton('9'),
//                   _buildCalculatorButton('0'),
//                   _buildCalculatorButton('C', color: Colors.red),
//                   _buildCalculatorButton('AC', color: Colors.red),
//                   _buildCalculatorButton('+', color: Colors.blue),
//                   _buildCalculatorButton('-', color: Colors.blue),
//                   _buildCalculatorButton('x', color: Colors.blue),
//                   _buildCalculatorButton('/', color: Colors.blue),
//                   _buildCalculatorButton('=', color: Colors.green),
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildCalculatorButton(String text, {Color? color}) {
//     return TextButton(
//       onPressed: () {
//         setState(() {
//           if (text == 'C') {
//             amountInput = '';
//           } else if (text == 'AC') {
//             amountInput = '';
//           } else if (text == '=') {
//             // Lakukan perhitungan jika tombol "=" ditekan
//           } else {
//             amountInput += text;
//           }
//         });
//       },
//       style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all(color ?? Colors.transparent),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 20, color: Colors.white),
//       ),
//     );
//   }

//   // kalkulator diatas

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('New account'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Text(
//                 'Account Name',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: Colors.green),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 25),
//               Text(
//                 'Bank Account Number',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   focusedBorder: UnderlineInputBorder(
//                     borderSide: BorderSide(color: Colors.green),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 25),
//               Text(
//                 'Account Type',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: _showAccountTypeDialog,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.green,
//                     ),
//                     borderRadius: BorderRadius.circular(4.0),
//                   ),
//                   padding: EdgeInsets.all(10.0),
//                   child: Text(selectedAccountType),
//                 ),
//               ),
//               SizedBox(height: 25),
//               Text(
//                 'Currency',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               DropdownButton<String>(
//                 value: 'IDR',
//                 onChanged: (String? newValue) {},
//                 items: <String>['IDR', 'USD', 'EUR'].map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//               SizedBox(height: 15),
//               Text(
//                 'Initial value',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: _showCalculatorDialog,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.green,
//                     ),
//                     borderRadius: BorderRadius.circular(4.0),
//                   ),
//                   padding: EdgeInsets.all(10.0),
//                   child: Text(amountInput),
//                 ),
//               ),
//               SizedBox(height: 25),
//               Text(
//                 'Currency',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               // DropdownButton<String>(
//               //   value: 'IDR',
//               //   onChanged: (String? newValue) {},
//               //   items: <String>['IDR', 'USD', 'EUR'].map<DropdownMenuItem<String>>((String value) {
//               //     return DropdownMenuItem<String>(
//               //       value: value,
//               //       child: Text(value),
//               //     );
//               //   }).toList(),
//               // ),
//               SizedBox(height: 15),
//               Text(
//                 'Color',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: _showColorDialog,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.green,
//                     ),
//                     borderRadius: BorderRadius.circular(4.0),
//                   ),
//                   padding: EdgeInsets.all(10.0),
//                   child: Container(
//                     width: 24,
//                     height: 24,
//                     color: selectedColor,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 25),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Exclude from statistics?'),
//                   Checkbox(
//                     value: false,
//                     onChanged: (bool? value) {},
//                   ),
//                 ],
//               ),
//               SizedBox(height: 25),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.green,
//                   onPrimary: Colors.white,
//                 ),
//                 child: Text('Save'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

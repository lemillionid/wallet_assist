import 'package:flutter/material.dart';

class BankSyncPage extends StatefulWidget {
  const BankSyncPage({Key? key}) : super(key: key);

  @override
  _BankSyncPageState createState() => _BankSyncPageState();
}

class _BankSyncPageState extends State<BankSyncPage> {
  String selectedCountry = 'Indonesia';
  String selectedBank = 'Bank Indonesia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Sync'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Search Your Bank',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Icon(
              Icons.account_balance,
              size: 100,
            ),
            SizedBox(height: 25),
            Text(
              'Select Your Country',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButton<String>(
              value: selectedCountry,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCountry = newValue!;
                });
              },
              items: <String>['Indonesia', 'Other Country'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              isExpanded: true,
              underline: Container(
                height: 2,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Select Your Bank',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButton<String>(
              value: selectedBank,
              onChanged: (String? newValue) {
                setState(() {
                  selectedBank = newValue!;
                });
              },
              items: <String>['Bank Indonesia', 'Other Bank'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              isExpanded: true,
              underline: Container(
                height: 2,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white, 
              ),
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BankSyncPage(),
  ));
}

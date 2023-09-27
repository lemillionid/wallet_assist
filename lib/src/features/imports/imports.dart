import 'package:flutter/material.dart';

class ImportsPage extends StatefulWidget {
  @override
  _ImportsPageState createState() => _ImportsPageState();
}

class _ImportsPageState extends State<ImportsPage> {
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
        title: Text('New account for import'),
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
              SizedBox(height: 25),
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

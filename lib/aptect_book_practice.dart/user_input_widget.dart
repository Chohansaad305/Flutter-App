import 'package:flutter/material.dart';

class UserInputWidget extends StatefulWidget {
  const UserInputWidget({super.key});

  @override
  State<UserInputWidget> createState() => _UserInputWidgetState();
}

class _UserInputWidgetState extends State<UserInputWidget> {
  final TextEditingController _textController = TextEditingController();

  String _selectedGender = 'Male';
  bool _agree = false;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Input'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// TextField Title
            const Text(
              'TextField',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            /// TextField
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.cancel),
              ),
            ),

            const SizedBox(height: 30),

            /// Radio Button Title
            const Text(
              'Radio Buttons',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            /// ✅ RadioGroup (NEW WAY)
            RadioGroup<String>(
              groupValue: _selectedGender,
              onChanged: (value) {
                setState(() {
                  _selectedGender = value!;
                });
              },
              child: Column(
                children: const [
                  RadioListTile(title: Text('Male'), value: 'Male'),
                  RadioListTile(title: Text('Female'), value: 'Female'),
                ],
              ),
            ),

            const SizedBox(height: 30),

            /// Checkbox Title
            const Text(
              'CheckBox',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            CheckboxListTile(
              title: const Text('I agree to the terms & conditions'),
              value: _agree,
              onChanged: (value) {
                setState(() {
                  _agree = value ?? false;
                });
              },
            ),

            const SizedBox(height: 30),

            /// Submit Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('Name: ${_textController.text}');
                  debugPrint('Gender: $_selectedGender');
                  debugPrint('Agree: $_agree');
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

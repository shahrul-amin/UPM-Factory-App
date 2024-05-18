import 'package:flutter/material.dart';
import 'package:flutter_phone_number_field/flutter_phone_number_field.dart';

class AddEmployees extends StatefulWidget {
  final int factorySection;
  final Function(String, String, int) addEmployeeCallback;

  AddEmployees(
      {required this.factorySection, required this.addEmployeeCallback});

  @override
  _AddEmployeesState createState() => _AddEmployeesState();
}

class _AddEmployeesState extends State<AddEmployees> {
  @override
  Widget build(BuildContext context) {
    String name = '';
    String phoneNumber = '';
    int factorySection = widget.factorySection;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Factory $factorySection',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              size: 28,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Invitation',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Invite Users',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            Text("Owner's Name"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Type Here", border: InputBorder.none),
                    onChanged: (value) {
                      name = value;
                    },
                  ),
                ),
              ),
            ),
            Text("Owner's Phone Number"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: FlutterPhoneNumberField(
                          initialCountryCode: "MY",
                          disableLengthCheck: true,
                          pickerDialogStyle: PickerDialogStyle(
                            countryFlagStyle: TextStyle(fontSize: 17),
                          ),
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add employee and navigate back
                Navigator.pop(context);
                widget.addEmployeeCallback(
                    name, phoneNumber, widget.factorySection);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

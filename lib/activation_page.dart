// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upm_factory/nav_bar.dart';

class ActivationPage extends StatefulWidget {
  ActivationPage({Key? key}) : super(key: key);

  @override
  _ActivationPageState createState() => _ActivationPageState();
}

class _ActivationPageState extends State<ActivationPage> {
  String buttonName = 'Activate';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 120,
                    width: 200,
                    child: Image.network(
                      'https://upm.edu.my/upload/dokumen/20170406143426UPM-New_FINAL.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Welcome !",
                    style: TextStyle(
                      fontSize: 56,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: phoneBox(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  "Disclaimer | Privacy Statement",
                  style: TextStyle(
                      color: Colors.blue[400],
                      fontSize: 16,
                      decoration: TextDecoration.underline),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Copyright UPM & Kejuruteraan Minyak Sawit \nCCS Sdn. Bhd.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container phoneBox() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 252, 252, 252),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      height: 350,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 26),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Enter the activation code \nyou received via SMS.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: GoogleFonts.openSans().fontFamily,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.info_outline,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [LengthLimitingTextInputFormatter(6)],
                        decoration: InputDecoration(
                          hintText: 'O T P',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Didn't receive?",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    TextSpan(
                      text: "Tap here",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue[400],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => NavigationBars(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.purple[400],
                    elevation: 4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      buttonName,
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

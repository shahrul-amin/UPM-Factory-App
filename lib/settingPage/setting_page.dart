// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int currSelection = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Factory $currSelection',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: currSelection == 1
            ? Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: status(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currSelection = 1;
                            });
                          },
                          child: factoryOneSelection(),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currSelection = 2;
                            });
                          },
                          child: factoryTwoDiselection(),
                        ),
                      ),
                    ],
                  )
                ],
              )
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: status(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currSelection = 1;
                            });
                          },
                          child: factoryOneDiselection(),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currSelection = 2;
                            });
                          },
                          child: factoryTwoSelection(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}

factoryOneSelection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Container(
      width: 160,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 232, 232, 232),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 0, 104, 196).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Icon(
              Icons.factory,
              size: 50,
            ),
          ),
          Text(
            'Factory 1',
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    ),
  );
}

factoryOneDiselection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Container(
      width: 160,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 232, 232, 232),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Icon(
              Icons.factory,
              size: 50,
            ),
          ),
          Text(
            'Factory 1',
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    ),
  );
}

factoryTwoSelection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Container(
      width: 160,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 232, 232, 232),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 0, 104, 196).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Icon(
              Icons.factory,
              size: 50,
            ),
          ),
          Text(
            'Factory 2',
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    ),
  );
}

factoryTwoDiselection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Container(
      width: 160,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 232, 232, 232),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Icon(
              Icons.factory,
              size: 50,
            ),
          ),
          Text(
            'Factory 2',
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    ),
  );
}

Container status() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color.fromARGB(255, 232, 232, 232),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        )
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Minimum Threshold",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 30.0),
                  child: Icon(Icons.info_outline),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        alignment: Alignment.centerRight,
                        fixedSize: MaterialStateProperty.all(Size(40, 40))),
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                      color: Colors.purple[900],
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        "Steam \nPressure",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              border: Border(
                                left: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                top: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              "29",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'bar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        "Steam \nFlow",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              border: Border(
                                left: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                top: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              "22",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'T/H',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        "Water \nLevel",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              border: Border(
                                left: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                top: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              "53",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '%',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        "Power \nFrequency",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              border: Border(
                                left: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                top: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              "48",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Hz',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

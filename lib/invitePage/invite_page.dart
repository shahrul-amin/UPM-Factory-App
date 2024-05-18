// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:upm_factory/invitePage/add_employees.dart';

class Employee {
  final String name;
  final String phoneNumber;

  Employee({required this.name, required this.phoneNumber});
}

class InvitePage extends StatefulWidget {
  const InvitePage({super.key});

  @override
  InvitePageState createState() => InvitePageState();
}

class InvitePageState extends State<InvitePage> {
  int currSelection = 1;

  List<Employee> factoryOneEmployees = [];
  List<Employee> factoryTwoEmployees = [];

  addEmployee(String name, String phoneNumber, int factorySection) {
    setState(() {
      if (factorySection == 1) {
        factoryOneEmployees.add(Employee(name: name, phoneNumber: phoneNumber));
      } else if (factorySection == 2) {
        factoryTwoEmployees.add(Employee(name: name, phoneNumber: phoneNumber));
      }
    });
  }

  void navigateToAddEmployeeScreen(BuildContext context, int factorySection) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddEmployees(
          factorySection: factorySection,
          addEmployeeCallback: addEmployee,
        ),
      ),
    );
  }

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
        body: Container(
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
                            child: Container(
                                height: 450,
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
                                    children: [
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount: factoryOneEmployees.length,
                                          itemBuilder: (context, index) {
                                            Employee employee =
                                                factoryOneEmployees[index];
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Material(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                elevation: 3,
                                                child: ListTile(
                                                  title: Text(
                                                    employee.name,
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  subtitle: Text(
                                                    employee.phoneNumber,
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  tileColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: SizedBox(
                                              height: 65,
                                              width: 65,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 250, 220, 255),
                                                  foregroundColor:
                                                      const Color.fromARGB(
                                                          255, 53, 14, 100),
                                                  elevation: 3,
                                                ),
                                                onPressed: () {
                                                  navigateToAddEmployeeScreen(
                                                      context, 1);
                                                },
                                                child: Icon(Icons.add),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                          )
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
                            child: Container(
                                height: 450,
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
                                    children: [
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount: factoryTwoEmployees.length,
                                          itemBuilder: (context, index) {
                                            Employee employee =
                                                factoryTwoEmployees[index];
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Material(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                elevation: 3,
                                                child: ListTile(
                                                  title: Text(
                                                    employee.name,
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  subtitle: Text(
                                                    employee.phoneNumber,
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  tileColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: SizedBox(
                                              height: 65,
                                              width: 65,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 250, 220, 255),
                                                  foregroundColor:
                                                      const Color.fromARGB(
                                                          255, 53, 14, 100),
                                                  elevation: 3,
                                                ),
                                                onPressed: () {
                                                  navigateToAddEmployeeScreen(
                                                      context, 2);
                                                },
                                                child: Icon(Icons.add),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                          )
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
        ));
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
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
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
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
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
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
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
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
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

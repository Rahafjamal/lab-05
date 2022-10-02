import 'package:flutter/material.dart';
import 'package:mmapp/home.dart';
import 'package:mmapp/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String Username = "";
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text(
          "Log in page",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'DancingScript',
          ),
        ),
        backgroundColor: Colors.cyan[600],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/2.jpg'),
            opacity: 200,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                child: Image(image: AssetImage("images/people.png")),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(25),
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    Username = value;
                                  });
                                },
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.cyan, width: 1),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    label: Text(
                                      " User name",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.cyan[600],
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'DancingScript',
                                      ),
                                    ),
                                    hintText: "Enter your user name ",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.cyan[600],
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'DancingScript',
                                    ),
                                    prefixIcon: Icon(Icons.people)),
                                maxLines: 1,
                                maxLength: 20,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(25),
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.cyan, width: 1),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    label: Text(
                                      " password",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.cyan[600],
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'DancingScript',
                                      ),
                                    ),
                                    hintText: "Please enter your password",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.cyan[600],
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'DancingScript',
                                    ),
                                    prefixIcon: Icon(Icons.people)),
                                maxLines: 1,
                                maxLength: 20,
                                textAlign: TextAlign.center,
                                obscureText: true,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Username == "rahafjamal"
                                  ? showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text(
                                            "Welcome !",
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.cyan[600],
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'DancingScript',
                                            ),
                                          ),
                                          content: Text(
                                            "you can edit your profile now ",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.cyan[600],
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'DancingScript',
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.cyan[600],
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  "edit",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle: FontStyle.italic,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ))
                                          ],
                                        );
                                      })
                                  : showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text(
                                            "The user name is invalid!",
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.cyan[600],
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'DancingScript',
                                            ),
                                          ),
                                          content: Text(
                                            "Cheak your user name and try agin , We will wait you :) ! ",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.cyan[600],
                                              fontFamily: 'DancingScript',
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  "try agin",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'DancingScript',
                                                  ),
                                                ))
                                          ],
                                        );
                                      });
                            },
                            child: Text(
                              "log-in",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontFamily: 'DancingScript',
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyan[600],
                            ),
                          ),
                          Divider(
                            height: 40,
                          ),
                          ElevatedButton.icon(
                            onPressed: (() {
                              setState(() {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const homeone();
                                }));
                              });
                            }),
                            label: const Text(
                              "Go Order !",
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'DancingScript'),
                            ),
                            icon: Icon(Icons.arrow_forward_outlined),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyan[600],
                            ),
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
      ),
    );
    return scaffold;
  }
}

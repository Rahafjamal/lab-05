import 'package:flutter/material.dart';
import 'package:mmapp/models/url.dart';
import 'package:url_launcher/url_launcher.dart';

class homeone extends StatefulWidget {
  const homeone({super.key});

  @override
  State<homeone> createState() => _homeoneState();
}

class _homeoneState extends State<homeone> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[600],
          bottom: TabBar(
            tabs: [
              IconButton(onPressed: () {}, icon: Icon(Icons.list)),
              IconButton(onPressed: () {}, icon: Icon(Icons.list)),
              IconButton(onPressed: () {}, icon: Icon(Icons.list)),
            ],
          ),
          title: Text(
            "Menu",
            style: TextStyle(
              fontFamily: "DancingScript",
              fontSize: 20,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage("images/c1.jpg"),
                    ),
                    ListTile(
                      title: Text(
                        "Cheese cake",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "Straberry 3JD",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(Icons.add),
                    ),
                    Image(
                      image: AssetImage("images/c2.jpg"),
                    ),
                    ListTile(
                      title: Text(
                        "Cheese cake",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "PRETZIL 3JD",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(Icons.add),
                    ),
                    Image(
                      image: AssetImage("images/c3.jpg"),
                    ),
                    ListTile(
                      title: Text(
                        "Cheese cake",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "UNTELLA 3JD",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(Icons.add),
                    ),
                    Image(
                      image: AssetImage("images/c4.jpg"),
                    ),
                    ListTile(
                      title: Text(
                        "Cheese cake",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "OREO 3JD",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage("images/c1.jpg"),
                    ),
                    ListTile(
                      title: Text(
                        "Cheese cake",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "Straberry 3JD",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(Icons.add),
                    ),
                    Image(
                      image: AssetImage("images/c2.jpg"),
                    ),
                    ListTile(
                      title: Text(
                        "Cheese cake",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "PRETZIL 3JD",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(Icons.add),
                    ),
                    Image(
                      image: AssetImage("images/c3.jpg"),
                    ),
                    ListTile(
                      title: Text(
                        "Cheese cake",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "UNTELLA 3JD",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(Icons.add),
                    ),
                    Image(
                      image: AssetImage("images/c4.jpg"),
                    ),
                    ListTile(
                      title: Text(
                        "Cheese cake",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "OREO 3JD",
                        style: TextStyle(
                          fontFamily: "DancingScript",
                          fontSize: 20,
                        ),
                      ),
                      leading: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/2.jpg'),
                  opacity: 400,
                ),
              ),
              child: Column(
                children: [
                  URLclass(
                    mylatfotmtitle: "facebook",
                    mylatformsubtitle: "join our page",
                    mylatformicon: Icons.facebook,
                    myfunction: facefun,
                  ),
                  URLclass(
                    mylatfotmtitle: "instagram",
                    mylatformsubtitle: "join our page",
                    mylatformicon: Icons.people,
                    myfunction: instafun,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

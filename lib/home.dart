import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFad8a09),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
        title: Center(
            child: Text("Alvis Market Place",
                style: TextStyle(fontFamily: 'Raleway'))),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.notifications,
                  size: 26.0,
                ),
              )),
          // Padding(
          //     padding: EdgeInsets.only(right: 20.0),
          //     child: GestureDetector(
          //       onTap: () {},
          //       child: Icon(Icons.more_vert),
          //     )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFad8a09),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 25.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.white,
              size: 25.0,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              color: Colors.white,
              size: 25.0,
            ),
            label: 'Account',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                margin: EdgeInsets.all(5.0),
                // color: Colors.grey,
                // shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(05)),
                child: ListTile(
                  leading: Image.asset("lib/img/watch.jpg"),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage("lib/img/watch.jpg"),
                  //   radius: 25,
                  // ),
                  title: Text("Smart Watch"),
                  subtitle: Text("Posted Today"),
                  trailing: ButtonTheme(
                      child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFad8a09)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          child: Text("Rs.2,000"))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                margin: EdgeInsets.all(5.0),
                // color: Colors.grey,
                // shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(05)),
                child: ListTile(
                  leading: Image.asset("lib/img/tab.jpg"),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage("lib/img/watch.jpg"),
                  //   radius: 25,
                  // ),
                  title: Text("Tablet PC"),
                  subtitle: Text("Posted Today"),
                  trailing: ButtonTheme(
                      child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFad8a09)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          child: Text("Rs.10,000"))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                margin: EdgeInsets.all(5.0),
                // color: Colors.grey,
                // shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(05)),
                child: ListTile(
                  leading: Image.asset("lib/img/case.jpg"),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage("lib/img/watch.jpg"),
                  //   radius: 25,
                  // ),
                  title: Text("Custom Case"),
                  subtitle: Text("Posted Today"),
                  trailing: ButtonTheme(
                      child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFad8a09)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          child: Text("Rs.500"))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

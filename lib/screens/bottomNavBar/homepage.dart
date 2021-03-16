import 'package:flutter/material.dart';
import 'package:senior/screens/drawer/about.dart';
import 'package:senior/screens/drawer/contact.dart';
import 'package:senior/screens/drawer/myaccount.dart';
import 'package:senior/screens/drawer/setting.dart';
import 'package:senior/screens/result.dart';
import 'package:senior/widgets/item.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<String> drawerItemTitle = [
  'My Account', 'Setting', 'Contact Us', 'About Us'
];

List<IconData> drawerItemIcon = [
  Icons.account_circle, Icons.settings, Icons.phone, Icons.info
];

List drawerClasses = [
  MyAccount(), Setting(), Contact(), About(),
];


List<String> itemImage = [
  'assets/pic2', 'assets/pic4', 'assets/pic5', 'assets/pic6', 'assets/pic7',
];

bool fav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: drawerItemTitle.length,
            itemBuilder: (context, index){
              return Container(
                child: ListTile(
                  leading: Icon(
                      drawerItemIcon[index],
                      color: Colors.black,
                      size: 20.0
                    ),
                  title: Text(
                      drawerItemTitle[index],
                      style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.black,
                      size: 20.0
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {return drawerClasses[index];}));
                    },
                ),
              );
            }
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10.0),
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pic3'),
                  fit: BoxFit.fill
                ),
              ),
              child: Container(
                    padding: EdgeInsets.only(bottom: 15.0),
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/pic'),
                      fit: BoxFit.fill
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListTile(
                        leading: Builder(
                          builder: (BuildContext context){
                            return IconButton(
                            icon: Icon(Icons.menu),
                            color: Colors.white,
                            iconSize: 20.0,
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          );
                          },
                        ),
                        title: Text(
                          'Senior',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        trailing: Icon(Icons.search, color: Colors.white, size: 20.0),
                      ),
                      Text(
                        'Season Sale',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '-40%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 55.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'off',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            ListTile(
              leading: Text(
                'Popular...',
                style:TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.navigate_next, color: Colors.black, size: 20.0),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (_) {
                      return Result();
                    }
                  )
                );
              },
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: itemScroll()
            ),
            ListTile(
              leading: Text(
                'New Arrival...',
                style:TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.navigate_next, color: Colors.black, size: 20.0)
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: itemScroll()
            ),
          ],
        ),
      ),
    );
  }
 itemScroll() {
   return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: itemImage.length,
    itemBuilder: (context, index){
      return Item(itemImage[index]);
    },
  );
 } 
}
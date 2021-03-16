import 'package:flutter/material.dart';
import 'package:senior/widgets/fav.dart';



class Item extends StatefulWidget {

final String itemImage;

Item(this.itemImage);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10.0),
        width: MediaQuery.of(context).size.width/2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 105.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(15.0), topLeft: Radius.circular(15.0)),
                image: DecorationImage(
                  image: AssetImage(widget.itemImage),
                  fit: BoxFit.fill
                )
              ),
              alignment: Alignment.topRight,
              child: Fav(false)
            ),
            ListTile(
              title: Text(
                'Green Paprika',
                style:TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '20\$',
                style:TextStyle(color: Colors.green, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 180.0,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0)),
              ),
              padding: EdgeInsets.only(top: 2.0, bottom: 2.0),
              child: IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.white,
                iconSize: 20.0,
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
  }
}
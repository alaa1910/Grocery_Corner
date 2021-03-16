import 'package:flutter/material.dart';
import 'package:senior/widgets/fav.dart';



class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> with TickerProviderStateMixin {

List<String> itemImage = [
  'assets/pic5', 'assets/pic6', 'assets/pic7', 'assets/pic8', 'assets/pic10', 'assets/pic11', 'assets/pic14',
];

double amount = 200.0;

int items = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black, size: 20.0),
        title: Text(
          'Shopping Cart',
          style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0.0),
        child: Column(
          children: [
            Flexible(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index){
                  return Divider(
                    color: Colors.grey,
                    endIndent: 20.0,
                    indent: 20.0,
                  );
                },
                itemCount: itemImage.length,
                itemBuilder: (context, index){
                  return Container(
                    child: ListTile(
                      leading: Image.asset(itemImage[index]),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tomato',
                            style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '20\$',
                            style: TextStyle(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // title: RichText(
                      //   text: TextSpan(
                      //     children: [
                      //       TextSpan(
                      //         text: 'Tomato',
                      //         style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
                      //       ),
                      //       TextSpan(
                      //         text: '20\$',
                      //         style: TextStyle(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.bold),
                      //       ),
                      //     ]
                      //   ),
                      // ),
                      trailing: Fav(false)
                    ),
                  );
                },
              ),
            ),
            SafeArea(
              bottom: true,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: ListTile(
                  title: Text(
                      'Total Amount is $amount \$',
                      style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  subtitle: Text(
                      '$items items',
                      style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  trailing: Icon(
                    Icons.shopping_basket,
                    color: Colors.white,
                    size: 20.0
                  )
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
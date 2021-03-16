import 'package:flutter/material.dart';



class Fav extends StatefulWidget {

final bool fav;

Fav(this.fav);

  @override
  _FavState createState() => _FavState();
}

class _FavState extends State<Fav> {

bool fav;


setFav() {
  if(widget.fav == false){
    fav = false;
  }else{
    fav = true;
  }
}


@override
void initState() {
  setFav();
  super.initState();
}


  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(fav == false ? Icons.favorite_border : Icons.favorite),
      color: Colors.red,
      iconSize: 20.0,
      onPressed: () {
        setState(() {
          fav = !fav;
        });
      },
    );
  }
}
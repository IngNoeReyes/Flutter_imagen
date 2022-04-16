import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Imagenes"),
        ),
        body: ListView(
         // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 8,
              clipBehavior: Clip.antiAlias,
              shadowColor: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: Column(children: <Widget>[
                Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/a/ac/IOS-Emblem.jpg"))
              ]),
            ),

            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 8,
              shadowColor: Colors.black,
              color: Colors.red.shade200,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: Column(children: <Widget>[
                Image.network("https://www.muycomputer.com/wp-content/uploads/2021/05/Windows10_Actualizacion_Mayo_2021.jpg", width: 200, height: 200)
              ]),
            ),

            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 8,
              shadowColor: Colors.black,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: Column(
                children: <Widget>[
                FadeInImage(
                  placeholder: AssetImage("assets/images/loading.gif"), 
                  image: NetworkImage("https://www.muylinux.com/wp-content/uploads/2020/01/ubuntu.png"), 
                  width: double.infinity, 
                  height: 200, 
                  fit: BoxFit.cover, 
                  fadeInDuration: Duration(milliseconds: 300)
                  ),
                Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding: EdgeInsets.only(right:20, top:10, bottom: 10),
                  child:Text("Ubuntu"),
                )
              ]
              ),
            ),
          ],
        )
        );
  }
}

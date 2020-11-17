import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ravindra Singh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:LinkLandingPage(),
    );
  }
}
class LinkLandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Material(
     child: Column(
       children: [
             SizedBox(height: 40.0,),
             FadeInImage.memoryNetwork(
               placeholder: kTransparentImage,
               image: 'https://www.linkpicture.com/view.php?img=LPic5fb3cd7c06b6c1001938814',
               height: 125,
               width: 125,),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Text("@jadaun_ravindra"),
             ),
             LinkButton(title: 'LinkedIn',url:'https://www.linkedin.com/in/ravindra-singh-7306291a3/'),
             LinkButton(title: "Resume", url: 'https://github.com/Sunny-Jadaun/Resume/blob/master/Resume_Ravindra_Singh.pdf'),
             LinkButton(title: 'GitHub',url:'https://github.com/Sunny-Jadaun'),
             Spacer(),
            Text("Made In Flutter",textScaleFactor: 1.5,),
            SizedBox(height: 20.0,)
           ],
         ),
   ); 
  }
}

class LinkButton extends StatelessWidget {
  final String title,url;
  const LinkButton({
    Key key,
    @required this.title,
    @required this.url
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final smallWidth= width*0.95;
    return SizedBox(
      width: 600<width?600:smallWidth,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20.0),
          onPressed: ()=>launch(this.url),
          child: Text(this.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textScaleFactor: 1.5,),
          color: Colors.greenAccent,
      ),
        ),
    );
  }
}
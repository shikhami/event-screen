import 'package:flutter/material.dart';
import 'main.dart';


class SplashScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     final deviceSize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: InkWell(
      splashColor: Colors.blueAccent, 
      onDoubleTap: ()=>Navigator.of(context).pushNamed(AuthScreen.routeName) ,
      onTap: ()=>Navigator.of(context).pushNamed(AuthScreen.routeName),
      onLongPress:  ()=>Navigator.of(context).pushNamed(AuthScreen.routeName),
          child: ListView(
                      children: [SafeArea(
                                              child: Center( 
                     child: Positioned( 
                                child: Container( 
                             // alignment: Alignment.,
                                margin: EdgeInsets.all(10),
                                width: 195,
                                height: deviceSize.height*1.2,
                                decoration: BoxDecoration(
                                   border: Border.all(
                                    color: Colors.blue,
                                   width: 9),
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                  image: DecorationImage(centerSlice: Rect.largest,
                                      //colorFilter:ColorFilter.linearToSrgbGamma() ,
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        'assets/images/logo.jpeg',
                                      )),
                                ),
                              ),
              ),
            ),
                      ),
                      ],
          ),
    ),
      
    );
  }
}
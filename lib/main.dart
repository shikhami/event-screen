import 'package:flutter/material.dart';
import 'event_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        EventScreen.routeName: (ctx) => EventScreen(),
        AuthScreen.routeName:(ctx)=>AuthScreen(),
      },
    );
  }
}

class AuthScreen extends StatelessWidget {
  static const routeName='/splash-screen';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    void login() {
      Navigator.of(context).pushNamed(EventScreen.routeName);
    }

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: [
          SizedBox(height:100,),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 190.0,
                      height: 270.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 10),
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        image: DecorationImage(
                            //colorFilter:ColorFilter.linearToSrgbGamma() ,
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/logo.jpeg',
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    SingleChildScrollView(
                                          child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 8.0,
                        child: Container(
                          height: 300,
                          constraints: BoxConstraints(minHeight: 260),
                          width: deviceSize.width * 0.94,
                          padding: EdgeInsets.all(16.0),
                          child: Form(
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Colors.orangeAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    autofocus: false,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      labelStyle: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      hintText: '203123212',
                                      hintStyle: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                           color: Colors.black,
                                      ),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    readOnly: true,
                                  ),
                                  TextFormField(
                                    readOnly: true,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                           color: Colors.black,),
                                    //autofillHints:Iterable() ,
                                    decoration: InputDecoration(
                                       // hoverColor: Colors.blue,
                                        //fillColor: Colors.blue,
                                        labelText: 'Password',
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                             color: Colors.black,
                                        ),
                                        hintText: '************',
                                        hintStyle: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                          color:Colors.black,
                                        ),
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,

                                        // helperText: '************',
                                        //  prefixText: '**********',
                                        // errorText: '***',
                                        counterText: 'Forget Password?',counterStyle:TextStyle(fontSize:14,)),
                                    obscureText: true,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  RaisedButton(
                                    child: Text('LOGIN'),
                                    onPressed: login,
                                    // shape: Border(
                                    //borderRadius: BorderRadius.circular(30),
                                    //),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 130.0, vertical: 9.0),
                                    color: Colors.blue,
                                    textColor: Theme.of(context)
                                        .primaryTextTheme
                                        .button
                                        .color,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 100,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

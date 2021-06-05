import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white70,
    statusBarIconBrightness: Brightness.dark
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text('LOGIN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),),
          backgroundColor: Colors.deepPurple, 
          bottom: PreferredSize(        
            preferredSize: Size.fromHeight(40),
            child: Column(
              children: [
                Text("Enter in your dream app",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
                ),
                SizedBox(height: 15,)
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(60),
            ),
          ),
        ),

        body: Column(
          children: [
            SizedBox(height: 70),
            Center(
              child: Container(
                width: 270,
                child: TextFormField(
                  style: TextStyle(color: Colors.deepPurple,),
                  
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.deepPurple,),  
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.deepPurple), borderRadius: BorderRadius.circular(25.0),),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.deepPurple), borderRadius: BorderRadius.circular(25.0),)
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Center(
              child: Container(
                width: 270,
                child: TextFormField(
                 obscureText: true,
                  style: TextStyle(color: Colors.deepPurple),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.deepPurple,),  
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.deepPurple), borderRadius: BorderRadius.circular(30.0),),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.deepPurple), borderRadius: BorderRadius.circular(30.0),)
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.deepPurple
              ),
              onPressed: () { },
              child: Text("Forget Password?"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 16),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
              onPressed: () { }, 
              child: Text("Sign In")
            ),

            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 107, vertical: 16),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
              onPressed: () { }, 
              child: Text("Sign Up")
            ),

            SizedBox(height: 10,),
            Center(
              child: Container(
                child: Text("OR",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple
                  ),
                ),
              ),
            ),

            
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.deepPurple,
                shape: StadiumBorder(),
                side: BorderSide(
                  width: 2.0,
                  color: Colors.deepPurple
                ),
                padding: EdgeInsets.symmetric(horizontal: 96, vertical: 18),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),             
              onPressed: () { }, 
              child: Text("Facebook")
            ),

            SizedBox(height: 70,),
            Container(
              child: Text("Designed by Adnan Ahmed Siddiqui",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 16
              ),
              ),
            )
          ],         
        ),
      ),
    );
  }
}
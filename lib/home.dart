import 'package:authentication2_flutter_app/Animation/FadeAnimation.dart';
import 'package:authentication2_flutter_app/sign_in.dart';
import 'package:authentication2_flutter_app/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: FadeAnimation(1.6,Container(

          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),

          child:Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

            Container(
            height: 140,
            width: 280,

            decoration: BoxDecoration(
                color: Colors.yellow[800],
                borderRadius: BorderRadius.only(bottomRight:Radius.circular(150),
                    bottomLeft:Radius.circular(150)
                )
            ),



          ),

              SizedBox(height: 120),

              Text('Creative',style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 60
                )
              )),

              SizedBox(height: 100),


              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[

                    Column(
                      children: [

                        FadeAnimation(1.6, Container(
                            height: 50,
                            width: 300,

                            // margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[800]
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                              },
                              child: Center(
                                child: Text("Sign Up", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            )
                        )),

                        SizedBox(height:20 ,),

                        FadeAnimation(1.6, Container(
                            height: 50,
                            width: 300,
                            // margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[800]
                              // gradient: instaGradient
                            ),

                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                              },
                              child: Center(
                                child: Text("Sign In", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            )
                        )),

                      ],
                    )


                  ]
              ),


            ],
          ),



        ),)




      ),
    );
  }
}

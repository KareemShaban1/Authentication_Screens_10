import 'package:authentication2_flutter_app/Animation/FadeAnimation.dart';

import 'package:authentication2_flutter_app/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black87),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),


          body:

          FadeAnimation(1.6,  Container(

            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white
            ),


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 150,

                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(150),
                            topLeft: Radius.circular(150),

                          )
                      ),

                      child: Center(child: Text('Creative',style: TextStyle(color: Colors.white,fontSize: 20),)),

                    ),
                  ],
                ),

                // SizedBox(height: 20,),




                FadeAnimation(1.6,  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child:
                  Text.rich(
                      TextSpan(
                          text: 'Sign in\n',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 30,

                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Please Sign In to continue',
                              style: TextStyle(fontSize: 20,color: Colors.grey),
                            ),


                          ]
                      )
                  ),
                ),),



                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    width: 280,
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black
                      ),

                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email address'
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    width: 280,
                    child: TextField(
                      style: TextStyle(
                          color: Colors.black
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password'
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30,),

                FadeAnimation(1.6, Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                      height: 50,
                      width: 300,

                      // margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[800]
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context) => FacebookSignUp()),);
                        },
                        child: Center(
                          child: Text("SIGN IN", style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      )
                  ),
                )),


                SizedBox(height: 60,),

                FadeAnimation(1.6,  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child:
                  Text.rich(
                      TextSpan(
                          text: "Don't have an account ? ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,

                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(fontSize: 20,color: Colors.grey[600],fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                                // single tapped
                              },
                            ),


                          ]
                      )
                  ),
                ),),










              ],
            ),




          ),
          )

        ));
  }
}

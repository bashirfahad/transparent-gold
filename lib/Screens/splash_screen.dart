import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'Login/login_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1B1919),
        body: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/image 1.png")),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Invest in",style: TextStyle(fontSize: 32,color: Colors.white),),
                GradientText(
                  ' gold',
                  style: TextStyle(
                    fontSize: 32.0,
                  ),
                  colors: [
                    Color(0xff814D01),
                    Color(0xffF7C203),
                    Color(0xff814D01),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("for your future",style: TextStyle(fontSize: 32,color: Colors.white),)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Easy way to invest ',
                    style: TextStyle(fontSize: 18,color: Color(0xffA1A2A3)),
                    children: const <TextSpan>[
                      TextSpan(text: 'in gold and\n', style: TextStyle(fontSize: 18,color: Color(0xffA1A2A3))),
                      TextSpan(text: '    gain more profit with us!'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));},
                  child: Container(
                    height: 50,
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xff8A5403),
                            Color(0xffFDC703),
                            Color(0xffFDC703),
                            Color(0xff8A5403)
                          ],
                        )
                    ),
                    child: Center(
                      child: Text("GET STARTED",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}

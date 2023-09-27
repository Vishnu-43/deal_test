import 'package:flutter/material.dart';

class LoginPageTestSample extends StatefulWidget {
  const LoginPageTestSample({super.key});

  @override
  State<LoginPageTestSample> createState() => _LoginPageTestSampleState();
}

class _LoginPageTestSampleState extends State<LoginPageTestSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login ",style: TextStyle( color: Color(0xFF5529A4),
            fontFamily:'Oswald-Bold') ,),
        backgroundColor:Colors.white ,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Center(

                child: Container(
                    width: 200,
                    height: 200,
                    /*decoration: BoxDecoration(
						color: Colors.red,
						borderRadius: BorderRadius.circular(50.0)),*/
                    child:Image.asset('assets/images/Login.jpeg')),
                
                
              ),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone number, email or username',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),

            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    child: const Text( 'Log in ', style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: (){
                      print('Successfully log in ');
                    },

                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 50,
            ),
            Container(
                child: Center(
                  child: Row(
                    children: [

                      const Padding(
                        padding: EdgeInsets.only(left: 62),
                        child: Text('Forgot your login details? '),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:1.0),
                        child: InkWell(
                            onTap: (){
                              print('hello');
                            },
                            child: Text('Get help logging in.', style: TextStyle(fontSize: 14, color: Colors.blue),)),
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

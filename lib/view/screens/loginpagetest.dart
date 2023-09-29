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
        title: const Text("Sign In ",style: TextStyle( color: Colors.black54,
            fontFamily:'Oswald',fontSize: 30) ,),
        backgroundColor:Colors.white ,
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/dealninga.jpeg',fit: BoxFit.fill,),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 0, right: 0, top: 100, bottom: 0),
              child: Text(
                'Welcome back',
                style: TextStyle(
                    fontFamily: 'Oswald', fontSize: 43, color: Colors.black54),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 0),
              child: Text(
                'Sharing is now easier collecting everything now easier collect everything',
                style: TextStyle(
                    fontSize: 17, fontFamily: 'Oswald', color: Colors.black54),
              ),
            ),

            const Padding(
              padding:  EdgeInsets.only(left:15.0,right: 15.0,top:20,bottom: 0),
            //  padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone number or email',
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
                            child: const Text('Get help logging in.', style: TextStyle(fontSize: 14, color: Colors.blue),)),
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

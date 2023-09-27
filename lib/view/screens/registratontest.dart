import 'package:flutter/material.dart';

class RegistrationSample extends StatefulWidget {
  const RegistrationSample({super.key});

  @override
  State<RegistrationSample> createState() => _RegistrationSampleState();
}

class _RegistrationSampleState extends State<RegistrationSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Registration',
          style: TextStyle(color: Colors.black54, fontFamily: 'Oswald'),
        )),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:    Container(
        color: Colors.white,
        child:  Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 0,right: 0,top: 100,bottom: 0 ),
              child: Text(
                'Create new account',
                style: TextStyle(
                    fontFamily: 'Oswald', fontSize: 43, color: Colors.black54),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40,right: 20,top: 20,bottom: 0),
              child: Text(
                  'sharing is now easier collecting everything now easier collect everything'
              ,style: TextStyle(fontSize: 17,fontFamily: 'Oswald',color: Colors.black54),),
            ),
            const Padding(
              padding:  EdgeInsets.only(left:40,right: 20,top:25,bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    
                    labelText: 'Enter your name',
                    hintText: 'Name ',
                prefixIcon: Icon(Icons.person_2_outlined)),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left:40,right: 20,top:25,bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    labelText: 'Enter your email',
                    hintText: 'Email ',
                    prefixIcon: Icon(Icons.email)),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left:40,right: 20,top:25,bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    labelText: 'Enter your PhoneNumber',
                    hintText: 'Phone ',
                    prefixIcon: Icon(Icons.phone)),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left:40,right: 20,top:25,bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    labelText: 'Enter your location ',
                    hintText: 'Place ',
                    prefixIcon: Icon(Icons.place)),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left:40,right: 20,top:25,bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    labelText: 'Enter your Pin code',
                    hintText: 'Pin ',
                    prefixIcon: Icon(Icons.pin)),
              ),
            ),
            SizedBox(
              height: 65,
              width: 360,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue[1000])  ),
                    child: const Text(  'Sign Up', style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: (){
                      print('Successfully log in ');
                    },

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

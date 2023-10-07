import 'package:flutter/material.dart';

class RegistrationSample extends StatefulWidget {
  const RegistrationSample({super.key});

  @override
  State<RegistrationSample> createState() => _RegistrationSampleState();
}

class _RegistrationSampleState extends State<RegistrationSample> {
  final _emailController = TextEditingController();
  // final _phoneController = TextEditingController();
  // final _locationController = TextEditingController();
  // final _pinController = TextEditingController();
  final _passwordController = TextEditingController();
  final loginForm = GlobalKey<FormState>();
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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(left: 0, right: 0, top: 100, bottom: 0),
                child: Text(
                  'Create new account',
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 43,
                      color: Colors.black54),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 20, top: 20, bottom: 0),
                child: Text(
                  'sharing is now easier collecting everything now easier collect everything',
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Oswald',
                      color: Colors.black54),
                ),
              ),
              Form(
                  key: loginForm,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 40, right: 20, top: 25, bottom: 0),
                        //padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            } else if (!value.contains('@gmail')) {
                              return "Please enter a valid email";
                            } else {
                              return null;
                            }
                          },
                          controller: _emailController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter your email',
                              hintText: 'Email ',
                              prefixIcon: Icon(Icons.email)),
                        ),
                      ),


                       Padding(
                        padding: const EdgeInsets.only(
                            left: 40, right: 20, top: 25, bottom: 0),
                        //padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          validator: (value){
                            RegExp regex = RegExp(
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                            if (value!.isEmpty){
                              return 'Please enter your password';
                            }
                            else{
                              if(!regex.hasMatch(value)){
                                return 'enter valid password';
                              }
                              else{
                                return null;
                              }
                            }

                          },
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter your Password',
                              hintText: 'Password ',
                              prefixIcon: Icon(Icons.password_outlined)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, right: 20, top: 25, bottom: 0),
                        //padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          validator: (value){
                           if (value!.isEmpty){
                             return "Empty";
                           }
                           if(value != _passwordController.text){
                             return 'Not Match';
                           }
                           else{
                             return null;
                           }

                          },

                          obscureText: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Conform Password',
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.password)),
                        ),
                      ),
                      SizedBox(
                        height: 65,
                        width: 360,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF4A4A5F))),
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () {
                                loginForm.currentState!.validate();
                                print('Successfully sign up ');
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

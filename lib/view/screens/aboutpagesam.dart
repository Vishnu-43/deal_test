import 'package:flutter/material.dart';

class AboutPageSample extends StatefulWidget {
  const AboutPageSample({super.key});

  @override
  State<AboutPageSample> createState() => _AboutPageSampleState();
}

class _AboutPageSampleState extends State<AboutPageSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "About Us",
            style: TextStyle(
                fontFamily: 'Oswald', fontSize: 25, color: Colors.white),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: const Column(
            children: [
        Padding(
        padding: EdgeInsets.only(left: 0, right: 0, top: 30, bottom: 0),
        child: Text(
          'THE TEAM',
          style: TextStyle(
              fontFamily: 'Oswald', fontSize: 43, color: Colors.black54),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 40, right: 20, top: 20, bottom: 0),

        child: Text(
          '',
          style: TextStyle(
              fontSize: 17, fontFamily: 'Oswald', color: Colors.black54),
        ),
      ),
    ]),
      )
    );
  }
}

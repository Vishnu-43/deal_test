import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isSwitchedNotification = false;
  bool isSwitchedDarklight = false;
  String dropdownvalue='English';
  var languages=[
    'English',
    'Malayalam',
    'Hindi',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
              fontFamily: 'Oswald', fontSize: 20, color: Colors.black54),
        ),
      ),
      body: Container(
         child:  Padding(
           padding: const EdgeInsets.all(13.0),
           child: Column(
             children: [
               const Card(
                 child: ListTile(
                   leading: Icon(Icons.account_circle,size: 30,color: Color(0xFF4A4A5F),
                   ),
                   title: Text('Account',style: TextStyle(fontSize: 19)),
                 ),
               ),
               const Card(
                 child: ListTile(
                   leading: Icon(Icons.privacy_tip_outlined,size: 30,color: Color(0xFF4A4A5F),
                   ),
                   title: Text('Privacy and policy',style: TextStyle(fontSize: 19)),
                 ),
               ),
               const Card(
                 child: ListTile(
                   leading: Icon(Icons.notifications,size: 30,color: Color(0xFF4A4A5F),),
                   title: Text('Notification',style: TextStyle(fontSize: 19)),
                 ),
               ),
               const Card(
                 child: ListTile(
                   leading: Icon(Icons.notifications,size: 30,color: Color(0xFF4A4A5F),),
                   title: Text('Notification',style: TextStyle(fontSize: 19)),
                 ),
               ),
               Card(
                 child: ListTile(
                   leading: const Icon(Icons.notifications,size: 30,color: Color(0xFF4A4A5F),),
                   title: const Text('Notification',style: TextStyle(fontSize: 19)),
                   trailing: Transform.scale(
                     scale: 0.9,
                     child: Switch(onChanged: (value){
                       setState(() {
                         isSwitchedNotification=value;
                       });
                       print('Switch Button is ${isSwitchedNotification ? 'ON':'OFF' }');
                     },
                     value: isSwitchedNotification,
                     activeColor: Colors.black45,
                     activeTrackColor: Colors.pink,
                     inactiveThumbColor: Colors.redAccent,
                     inactiveTrackColor: Colors.orangeAccent,
                     ),
                   ),
                 ),
               ),
                Card(
                 child: ListTile(
                   leading: const Icon(Icons.dark_mode,
                   size: 30,color: Color(0xFF4A4A5F)),
                   title: const Text('Dark/Light Mode',style: TextStyle(fontSize: 19),),
                   trailing: Transform.scale(
                     scale: 0.9,child: Switch(onChanged: (value){
                       setState(() {
                         isSwitchedDarklight = value;
                       });
                       print('Switch button is ${isSwitchedDarklight ? 'ON':'OFF'}');
                   },value: isSwitchedDarklight,
                     activeColor: Colors.blue,
                     activeTrackColor: Colors.yellow,
                     inactiveThumbColor: Colors.redAccent,
                     inactiveTrackColor: Colors.orange,
                   ),

                   ),
                 ),
               ),
               Card(
                 child: ListTile(
                     leading: const Icon(Icons.language,
                         size: 30, color: Color(0xFF4A4A5F)),
                     title: Text('Language', style: TextStyle(fontSize: 19)),
                     trailing: DropdownButton(
                       value: dropdownvalue,
                       icon: const Icon(Icons.keyboard_arrow_down),
                       items: languages.map((String items) {
                         return DropdownMenuItem(
                           value: items,
                           child: Text(items),
                         );
                       }).toList(),
                       onChanged: (String? newValue) {
                         setState(() {
                           dropdownvalue = newValue!;
                         });
                       },
                     )),
               ),
               const Card(
                 child: ListTile(
                   leading:
                   Icon(Icons.album, size: 30, color: Color(0xFF4A4A5F)),
                   title: Text('Sonu Nigam', style: TextStyle(fontSize: 19)),
                 ),
               ),
               const Card(
                 child: ListTile(
                   leading:
                   Icon(Icons.password, size: 30, color: Color(0xFF4A4A5F)),
                   title:
                   Text('Change Password', style: TextStyle(fontSize: 19)),
                 ),
               ),
               const Card(
                 child: ListTile(
                   leading:
                   Icon(Icons.delete, size: 30, color: Color(0xFF4A4A5F)),
                   title: Text('Delete Account', style: TextStyle(fontSize: 19)),
                 ),
               ),
               const Card(
                 child: ListTile(
                   leading:
                   Icon(Icons.logout, size: 30, color: Color(0xFF4A4A5F)),
                   title: Text(
                     'Log Out',
                     style: TextStyle(fontSize: 19),
                   ),
                 ),
               ),

             ],
           ),
         ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

void main() =>  runApp(
  MaterialApp(home: Settings()));

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings>{
  static bool _value1 = false;
  static bool _value2 = false;
  static bool _value3 = false;
  static const TextStyle textTile = TextStyle(fontSize: 18, fontFamily: 'Raleway',color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListTileSwitch(
              value: _value1,
              leading: Icon(Icons.format_paint_rounded, color: Colors.pink),
              onChanged: (value) {
                setState(() {
                  _value1 = value;
                });
              },
              visualDensity: VisualDensity.comfortable,
              switchType: SwitchType.cupertino,
              switchActiveColor: Colors.pink,
              title: Text(
                'Dark mode',
                style: textTile,
              ),
            ),
            ListTileSwitch(
              value: _value2,
              leading: Icon(Icons.notifications_active, color: Colors.pink),
              onChanged: (value) {
                setState(() {
                  _value2 = value;
                });
              },
              visualDensity: VisualDensity.comfortable,
              switchType: SwitchType.cupertino,
              switchActiveColor: Colors.pink,
              title: Text(
                'Notifications',
                style: textTile,
              ),
            ),
            ListTileSwitch(
              value: _value3,
              leading: Icon(Icons.volume_up, color: Colors.pink),
              onChanged: (value) {
                setState(() {
                  _value3 = value;
                });
              },
              visualDensity: VisualDensity.comfortable,
              switchType: SwitchType.cupertino,
              switchActiveColor: Colors.pink,
              title: Text(
                'Sound',
                style: textTile,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

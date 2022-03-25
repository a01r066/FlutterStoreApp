import 'package:flutter/material.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';

class UserTileWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subTitle;

  const UserTileWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  State<UserTileWidget> createState() => _UserTileWidgetState();
}

class _UserTileWidgetState extends State<UserTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          onTap: () {
            print("Tapped!");
          },
          title: Text(widget.title),
          subtitle: Text(widget.subTitle),
          leading: Icon(widget.icon),
        ),
      ),
    );
  }
}

Widget UserTile(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    ),
  );
}

Widget UserSetting({required IconData icon, required String title, required bool isOn, required bool isHidden, required Function(bool) onSwitch}){
  return ListTile(
    title: Text(title),
    leading: Icon(icon),
    trailing: isHidden ? null : Switch(
      value: isOn,
      onChanged: (value){
        onSwitch(value);
      },
      activeTrackColor: Colors.grey[300],
      activeColor: Colors.blueAccent,
    ),
  );
}

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
      color: Colors.black87,
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

Widget UserBag({required IconData icon, required String title}){
  return ListTile(
    title: Text(title),
    leading: Icon(icon),
    trailing: Icon(KAppIcons.arrowRight),
  );
}

Widget buildFab(ScrollController _scrollController) {
  //starting fab position
  const double defaultTopMargin = 196.0;
  //pixels from top where scaling should start
  const double scaleStart = 160.0;
  //pixels from top where scaling should end
  const double scaleEnd = scaleStart / 2;

  double top = defaultTopMargin;
  double scale = 1.0;
  if (_scrollController.hasClients) {
    double offset = _scrollController.offset;
    top -= offset;
    if (offset < defaultTopMargin - scaleStart) {
      //offset small => don't scale down
      scale = 1.0;
    } else if (offset < defaultTopMargin - scaleEnd) {
      //offset between scaleStart and scaleEnd => scale down
      scale = (defaultTopMargin - scaleEnd - offset) / scaleEnd;
    } else {
      //offset passed scaleEnd => hide fab
      scale = 0.0;
    }
  }

  return Positioned(
    top: top,
    right: 16.0,
    child: Transform(
      transform: Matrix4.identity()..scale(scale),
      alignment: Alignment.center,
      child: FloatingActionButton(
        backgroundColor: Colors.purple,
        heroTag: "btn1",
        onPressed: () {},
        child: Icon(KAppIcons.camera),
      ),
    ),
  );
}

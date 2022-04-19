import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final bool? isHidden;
  final Function()? callback;

  const HeaderWidget({Key? key, required this.title, this.isHidden, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        isHidden == true
            ? const Text("")
            : GestureDetector(
          onTap: callback,
              child: Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 12.0, color: Theme.of(context).hintColor, fontWeight: FontWeight.w500),
                ),
            )
      ],
    );
  }
}

class MatIconButton extends StatelessWidget {
  const MatIconButton({
    Key? key,
    required this.iconData,
    this.iconColor,
    this.bgColor,
    required this.callback,
  }) : super(key: key);

  final IconData iconData;
  final Color? iconColor;
  final Color? bgColor;
  final Function() callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.all(0),
        splashColor: Colors.transparent,
        color: bgColor,
        onPressed: callback,
        child: Icon(
          iconData,
          size: 24.0,
          color: iconColor,
        ),
      ),
    );
  }
}

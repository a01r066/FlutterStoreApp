import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key, required this.title, required this.description, required this.iconData, required this.buttonName, this.callback}) : super(key: key);

  final String title;
  final String description;
  final IconData iconData;
  final String buttonName;
  final Function()? callback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(iconData, size: 150.0, color: Theme.of(context).backgroundColor,),
              // Image.asset(
              //   'assets/images/emptycart.png',
              //   fit: BoxFit.contain,
              // ),
              Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textSelectionTheme.selectionColor),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: 16.0, color: Theme.of(context).hintColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: callback,
                child: Text(
                  buttonName,
                  style: TextStyle(fontSize: 20.0),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(double.infinity, 40.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

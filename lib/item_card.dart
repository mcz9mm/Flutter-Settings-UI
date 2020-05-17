import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {

  ItemCard({this.title, this.color, this.rightWidget, this.callback, this.textColor});

  final Color color;
  final Color textColor;
  final String title;
  final Widget rightWidget;
  final Function callback;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: Container(
        height: 60,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 24),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: textColor,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 24),
              child: rightWidget,
            )
          ],
        ),
      ),
      onTap: callback,
    );
  }
}

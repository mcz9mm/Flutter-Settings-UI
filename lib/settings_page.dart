import 'package:flutter/material.dart';
import 'package:fluttersettingsui/item_card.dart';

class SettingsPage extends StatelessWidget {

  Widget _arrow() {
    return Icon(
      Icons.arrow_forward_ios,
      size: 20.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        color: (brightness == Brightness.light) ? Color(0xFFF7F7F7) : Color(0xFF000000),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                color: (brightness == Brightness.light) ? Color(0xFFF7F7F7) : Color(0xFF000000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'App Settings',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ItemCard(
                      title: 'Settings Item 01',
                      color: (brightness == Brightness.light) ? Colors.white : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: null,
                      callback: () {
                        print('Tap Settings Item 01');
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'Others',
                        style: TextStyle(
                            fontFamily: 'NotoSansJP',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF999999)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ItemCard(
                      title: 'Settings Item 02',
                      color: (brightness == Brightness.light) ? Colors.white : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: _arrow(),
                      callback: () {
                        print('Tap Settings Item 02');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 03',
                      color: (brightness == Brightness.light) ? Colors.white : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: _arrow(),
                      callback: () {
                        print('Tap Settings Item 03');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 04',
                      color: (brightness == Brightness.light) ? Colors.white : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: _arrow(),
                      callback: () {
                        print('Tap Settings Item 04');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 05',
                      color: (brightness == Brightness.light) ? Colors.white : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: null,
                      callback: () {
                        print('Tap Settings Item 05');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 06',
                      color: (brightness == Brightness.light) ? Colors.white : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: null,
                      callback: () {
                        print('Tap Settings Item 06');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 07',
                      color: (brightness == Brightness.light) ? Colors.white : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: null,
                      callback: () {
                        print('Tap Settings Item 07');
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ItemCard(
                      title: 'Settings Item 08',
                      color: (brightness == Brightness.light) ? Colors.white : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: null,
                      callback: () {
                        print('Tap Settings Item 08');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 09',
                      color: (brightness == Brightness.light) ? Colors.white  : Theme.of(context).scaffoldBackgroundColor,
                      callback: () {
                        print('Tap Settings Item 09');
                      },
                      textColor: Colors.red,
                    ),
                    ItemCard(
                      title: 'version',
                      color: (brightness == Brightness.light) ? Colors.white  : Theme.of(context).scaffoldBackgroundColor,
                      rightWidget: Center(
                        child: Text('1.0.0',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            )
                        ),
                      ),
                      callback: () {},
                    ),
                    SizedBox(
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

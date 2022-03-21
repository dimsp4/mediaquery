import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(title: Text("Media Query"));

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (isLandScape)
            ? Column(
                children: [
                  Container(
                    height: bodyHeight * 0.5,
                    width: mediaQueryWidth,
                    color: Colors.amber,
                  ),
                  Container(
                    height: bodyHeight * 0.5,
                    width: mediaQueryWidth,
                    child: ListView.builder(
                        itemCount: 50,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            width: 100,
                            color: Color.fromARGB(155, Random().nextInt(155),
                                Random().nextInt(155), Random().nextInt(155)),
                          );
                        }),
                  )
                ],
              )
            : Column(
                children: [
                  Container(
                    height: bodyHeight * 0.3,
                    width: mediaQueryWidth,
                    color: Colors.amber,
                  ),
                  Container(
                    height: bodyHeight * 0.7,
                    width: mediaQueryWidth,
                    child: ListView.builder(
                        itemCount: 50,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            width: 100,
                            color: Color.fromARGB(255, Random().nextInt(155),
                                Random().nextInt(155), Random().nextInt(155)),
                          );
                        }),
                  )
                ],
              ),
      ),
    );
  }
}

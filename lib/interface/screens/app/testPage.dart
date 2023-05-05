import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TestPage extends StatelessWidget {
  final String path = '/home';
  const TestPage({Key? key, String? path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Test Page'),),
        automaticallyImplyLeading: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                //context.canPop();
                context.go(path);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: Center(
        child: Text("Text Page"),
      ),
    );
  } //Navigator.pop(context);
}

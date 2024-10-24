import 'package:all_platfrom_flutter/parent_data_widget/FrogWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../inherited_widget/inherited_main.dart';

void main() {
  runApp(const ParentApp());
}

class ParentApp extends StatelessWidget {
  const ParentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:  MyHomePage(title: '',),
      home: ParentWidgetPage(),
    );
  }
}

class ParentWidgetPage extends StatefulWidget {
  const ParentWidgetPage({super.key});

  @override
  State<ParentWidgetPage> createState() => _ParentWidgetPageState();
}

class _ParentWidgetPageState extends State<ParentWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow,
        alignment: Alignment.center,
        child: Column(
          children: [
            FrogWidget(
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              size: Size(200, 200),
            ),
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
          ],
        ),
        // child: Container(
        //   color: Colors.blue,
        //   width: 200,
        //   height: 200,
        // ),
      ),
    );
  }
}

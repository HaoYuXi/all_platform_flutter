import 'package:all_platfrom_flutter/inherited_widget/first_page.dart';
import 'package:all_platfrom_flutter/inherited_widget/search_state_inherited.dart';
import 'package:all_platfrom_flutter/inherited_widget/second_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;
  List<String> tabs = ['测试', '正式'];
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SearchStateInherited(
      notifier: ValueNotifier<int>(_counter),
      child: DefaultTabController(
        length: tabController.length,
        child: SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                TabBar(
                    tabs: List.generate(
                        tabs.length, (index) => Tab(text: tabs[index]))),
                const Expanded(
                  child: TabBarView(children: [
                    FirstPage(),
                    SecondPage(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

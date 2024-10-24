import 'package:flutter/material.dart';

import 'search_state_inherited.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  List<String> list = ['苹果', '橘子', '香蕉', '苹果'];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: list.length, vsync: this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SearchStateInherited.of(context)?.notifier.addListener(() {
      tabController
          ?.animateTo(SearchStateInherited.of(context)?.notifier.value ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    int count = SearchStateInherited.of(context)?.count ?? 0;
    debugPrint('first count: $count');
    return Container(
      color: Colors.blue,
      height: 30,
      child: TabBar(
        isScrollable: true,
        onTap: (index) {
          SearchStateInherited.of(context)?.changeCount(index);
        },
        controller: tabController,
        tabs: List.generate(list.length, (index) => Tab(text: list[index])),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

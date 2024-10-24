import 'package:all_platfrom_flutter/inherited_widget/search_state_inherited.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with TickerProviderStateMixin,AutomaticKeepAliveClientMixin {
  List<String> list = ['苹果', '橘子', '香蕉', '苹果', '橘子', '香蕉', '苹果', '橘子', '香蕉'];
  TabController? tabController;

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
    debugPrint('count: $count');
    return DefaultTabController(
      length: tabController?.length ?? 0,
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 30,
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              onTap: (index) {
                SearchStateInherited.of(context)?.changeCount(index);
              },
              tabs:
                  List.generate(list.length, (index) => Tab(text: list[index])),
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.yellow,
            child: TabBarView(
              controller: tabController,
              children: List.generate(
                  list.length, (index) => Center(child: Text(list[index]))),
            ),
          ))
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

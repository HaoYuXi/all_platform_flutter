import 'package:flutter/cupertino.dart';

class SearchStateInherited extends InheritedWidget {
  int count = 0;
  final ValueNotifier<int> notifier;

  SearchStateInherited({
    Key? key,
    required this.notifier,
    required Widget child,
  }) : super(key: key, child: child);

  void changeCount(int count) {
    notifier.value = count;
    this.count = count;
  }

  static SearchStateInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SearchStateInherited>();
  }

  @override
  bool updateShouldNotify(SearchStateInherited oldWidget) {
    return count != oldWidget.count;
  }
}

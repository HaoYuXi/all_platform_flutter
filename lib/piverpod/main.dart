import 'package:all_platfrom_flutter/inherited_widget/inherited_main.dart';
import 'package:all_platfrom_flutter/piverpod/providers/user_info.dart';
import 'package:all_platfrom_flutter/piverpod/state/user_info_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter riverpod',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'home page',
      ),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Consumer(builder: (context, ref, child) {
            AsyncValue<UserInfoState> value = ref.watch(getUserProvider);
            return switch (value) {
              AsyncValue(:final error?) => Text('Error: $error'),
              AsyncValue(:final valueOrNull?) => Text('$valueOrNull'),
              _ => const CircularProgressIndicator(),
            };
          }),
          GestureDetector(
            onTap: () {
              ref.refresh(delayedAcquisitionProvider.future);
            },
            child: Container(
              width: 300,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text('Refresh'),
            ),
          ),
        ],
      ),
    );
  }
}

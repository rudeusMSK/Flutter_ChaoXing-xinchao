import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

void main() {
  runApp(const MaterialApp(
    home: SplitScreenWidget(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ParenWidget(),
        ),
      ),
    );
  }
}

class SplitScreenWidget extends StatelessWidget {
  const SplitScreenWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Padding(
                      padding:  EdgeInsets.all(15),
                      child: Text(
                        'APP HÔ BIẾN HOÀNG TỬ ẾCH',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => 
                            const MyWidgetStatefull(true),
                          ),
                        );
                      },
                      child: const Text('chọn chàng ếch'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const MyWidgetStatefull(false),
                          ),
                        );
                      },
                      child: const Text('chọn hoàng tử'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.all(8),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('State full widget'),
                    ),
                    Spacer(),
                    MyWidgetStatefull(false),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ParenWidget extends StatelessWidget {
  const ParenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
            ),
            padding: const EdgeInsets.all(10),
            child: MyWidget(false),
          ),
          const SizedBox(width: 20),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
            ),
            padding: const EdgeInsets.all(10),
            child: const MyWidgetStatefull(false),
          ),
        ]),
      ),
    );
  }
}

// StatefullWidget:
class MyWidgetStatefull extends StatefulWidget {
  final bool loading;

  const MyWidgetStatefull(this.loading, {super.key});

  @override
  State<StatefulWidget> createState() {
    return StateDemo();
  }
}

class StateDemo extends State<MyWidgetStatefull> {
  late bool loading;

// initState chạy trước build
  @override
  void initState() {
    super.initState();
    loading = widget.loading;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'APP HÔ BIẾN HOÀNG TỬ ẾCH',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        Text(
          loading ? ' ộc ộc sama ! 🐸' : 'Trai Thẳng ＜(´⌯ ̫⌯`)＞',
          style: const TextStyle(fontSize: 24),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            !loading
                ? ' nhấn để Phù phép hoàng tử thành ếch'
                : 'nhấn hôn hoàng tử để giải lời nguyền ! ',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),
        FloatingActionButton(
          backgroundColor: const Color(0xff03dac6),
          foregroundColor: Colors.black,
          onPressed: onClickButton,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void onClickButton() {
    setState(() {
      loading = !loading;
    });
  }
}

// StatelessWidget:
class MyWidget extends StatelessWidget {
  final bool loading;

  MyWidget(this.loading);

  @override
  Widget build(BuildContext context) {
    return loading
        ? const CircularProgressIndicator()
        : const Text("State less widget");
  }
}

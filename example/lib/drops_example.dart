import 'package:drops/drops.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(debugShowCheckedModeBanner: false, home: DropsExample());
  }
}

class DropsExample extends StatefulWidget {
  const DropsExample({super.key});

  @override
  State<DropsExample> createState() => _DropsExampleState();
}

class _DropsExampleState extends State<DropsExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Center(
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CupertinoButton.filled(
                child: Text('Basic drop'),
                onPressed: () {
                  Drops.show(context, title: 'Basic drop');
                },
              ),
              CupertinoButton.filled(
                child: Text('Drop with subtitle'),
                onPressed: () {
                  Drops.show(context, title: 'Basic drop', subtitle: 'subtitle');
                },
              ),
              CupertinoButton.filled(
                child: Text('Warning drop'),
                onPressed: () {
                  Drops.show(
                    context,
                    title: 'Warning',
                    subtitle: 'This is a warning',
                    isDestructive: true,
                    icon: CupertinoIcons.exclamationmark_triangle_fill,
                  );
                },
              ),
              CupertinoButton.filled(
                child: Text('Squared drop'),
                onPressed: () {
                  Drops.show(context, title: 'Basic drop', subtitle: 'subtitle', shape: DropShape.squared);
                },
              ),
              CupertinoButton.filled(
                child: Text('bottom positioned drop'),
                onPressed: () {
                  Drops.show(
                    context,
                    title: 'Bottom positioned drop',
                    subtitle: 'subtitle',
                    position: DropPosition.bottom,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

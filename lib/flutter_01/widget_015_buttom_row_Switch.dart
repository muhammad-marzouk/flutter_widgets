import 'package:flutter/material.dart';

class TextButtonExample extends StatelessWidget {
  const TextButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: null,
              child: const Text('Disabled'),
            ),
            const SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Enabled'),
            ),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('Gradient'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () {
                debugPrint('OutlinedButton Received click');
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}

// SelectableButton Example
void main() {
  runApp(const MaterialApp(home: Home()));
}

class SelectableButton extends StatefulWidget {
  const SelectableButton({
    super.key,
    required this.selected,
    this.style,
    required this.onPressed,
    required this.child,
  });

  final bool selected;
  final ButtonStyle? style;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  late final MaterialStatesController statesController;

  @override
  void initState() {
    super.initState();
    statesController = MaterialStatesController(
        <MaterialState>{if (widget.selected) MaterialState.selected});
  }

  @override
  void didUpdateWidget(SelectableButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selected != oldWidget.selected) {
      statesController.update(MaterialState.selected, widget.selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      statesController: statesController,
      style: widget.style,
      onPressed: widget.onPressed,
      child: widget.child,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableButton(
          selected: selected,
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.white;
                }
                return null; // defer to the defaults
              },
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.indigo;
                }
                return null; // defer to the defaults
              },
            ),
          ),
          onPressed: () {
            setState(() {
              selected = !selected;
            });
          },
          child: const Text('toggle selected'),
        ),
      ),
    );
  }
}

// Row Example
class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Text('Deliver features faster',
                    textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
              ),
              Expanded(
                child: FittedBox(
                  child: FlutterLogo(),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              FlutterLogo(),
              Expanded(
                child: Text(
                    "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
              ),
              Icon(Icons.sentiment_very_satisfied),
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,

            children: <Widget>[
              FlutterLogo(),
              Expanded(
                child: Text("يساعدك التحديث السريع لـ Flutter على تجربة وبناء واجهات المستخدم وإضافة الميزات وإصلاح الأخطاء بشكل أسرع. استمتع بتجربة أوقات إعادة التحميل في أقل من ثانية، دون فقدان الحالة، على المحاكيات وأجهزة المحاكاة والأجهزة لنظامي التشغيل iOS وAndroid.",textAlign: TextAlign.right,textDirection: TextDirection.rtl,),
              ),
              Icon(Icons.sentiment_very_satisfied),
            ],
          )
        ],
      ),
    );
  }
}

// button Example
class ButtonExample extends StatefulWidget {
  const ButtonExample({super.key});

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}
class _ButtonExampleState extends State<ButtonExample> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () {
                debugPrint('OutlinedButton Received click');
              },
              child: const Text('Click Me'),
            ),
            Switch(
              // This bool value toggles the switch.
              value: light,
              activeColor: Colors.red,
              onChanged: (bool value) {
                // This is called when the user toggles the switch.
                setState(() {
                  light = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

// button Example2
class ButtonExample2 extends StatefulWidget {
  const ButtonExample2({super.key});

  @override
  _ButtonExample2State createState() => _ButtonExample2State();
}
class _ButtonExample2State extends State<ButtonExample2> {
  bool light = true;

  final MaterialStateProperty<Color?> trackColor =
  MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
      // Track color when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return Colors.amber;
      }
      // Otherwise return null to set default track color
      // for remaining states such as when the switch is
      // hovered, focused, or disabled.
      return null;
    },
  );
  final MaterialStateProperty<Color?> overlayColor =
  MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
      // Material color when switch is selected.
      if (states.contains(MaterialState.selected)) {
        return Colors.amber.withOpacity(0.54);
      }
      // Material color when switch is disabled.
      if (states.contains(MaterialState.disabled)) {
        return Colors.grey.shade400;
      }
      // Otherwise return null to set default material color
      // for remaining states such as when the switch is
      // hovered, or focused.
      return null;
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          // This bool value toggles the switch.
          value: light,
          overlayColor: overlayColor,
          trackColor: trackColor,
          thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              light = value;
            });
          },
        ),
      ),
    );
  }
}


// button Example3
class SwitchApp extends StatelessWidget {
  const SwitchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Switch Sample')),
        body: const Center(
          child: SwitchExample(),
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light0 = true;
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
  MaterialStateProperty.resolveWith<Icon?>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Switch(
          value: light0,
          onChanged: (bool value) {
            setState(() {
              light0 = value;
            });
          },
        ),
        Switch(
          thumbIcon: thumbIcon,
          value: light1,
          onChanged: (bool value) {
            setState(() {
              light1 = value;
            });
          },
        ),
      ],
    );
  }
}


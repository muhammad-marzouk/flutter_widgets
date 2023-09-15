import 'package:flutter/material.dart';

/// Flutter code sample for [MaterialBanner].


class MaterialBannerExampleApp3 extends StatelessWidget {
  const MaterialBannerExampleApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The MaterialBanner is below'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show MaterialBanner'),
          onPressed: () => ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              padding: const EdgeInsets.all(20),
              content: const Text('Hello, I am a Material Banner'),
              leading: const Icon(Icons.agriculture_outlined),
              backgroundColor: Colors.green,
              actions: <Widget>[
                TextButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  },
                  child: const Text('DISMISS'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



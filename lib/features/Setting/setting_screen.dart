import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Setting"),
          // leading: const AutoLeadingButton(color: Colors.white),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  context.router.push(ParamPageRoute(
                    paramId: 1,
                  ));
                },
                child: const Icon(
                  Icons.add,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      context.router.push(const FirstPageRoute());
                    },
                    child: const Text("First Page")),
                TextButton(
                    onPressed: () {
                      context.router.push(const MainPageRoute());
                    },
                    child: const Text("Main Page")),
                TextButton(
                    onPressed: () {
                      context.router.push(const SecondPageRoute());
                    },
                    child: const Text("Second Page")),
              ],
            ),
            const Expanded(
              // nested routes will be rendered here
              child: AutoRouter(),
            )
          ],
        ));
  }
}

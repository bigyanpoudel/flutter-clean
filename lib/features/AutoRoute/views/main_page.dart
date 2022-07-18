import 'package:flutter/material.dart';
import 'package:test_app/routes/routes.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              context.router.replace(const FirstPageRoute());
            },
            child: const Text("Navigate to first Page"),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Navigate to second Page"),
          ),
        ],
      ),
    );
  }
}

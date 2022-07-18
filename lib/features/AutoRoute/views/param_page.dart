import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ParamPage extends StatelessWidget {
  final int paramId;
  const ParamPage({Key? key, @PathParam('id') required this.paramId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Params Page"),
      ),
      body: Column(
        children: [
          Text("Checking params and query $paramId"),
        ],
      ),
    );
  }
}

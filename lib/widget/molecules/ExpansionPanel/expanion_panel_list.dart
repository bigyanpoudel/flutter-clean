import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Post/data/post_model/post_model.dart';

class CustomExpansionPanelList extends ConsumerStatefulWidget {
  final List<PostModel> data;
  const CustomExpansionPanelList({Key? key, required this.data})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomExpansionPanelListState();
}

class _CustomExpansionPanelListState
    extends ConsumerState<CustomExpansionPanelList> {
  final List _isBool = [];
  @override
  Widget build(BuildContext context) {
    log("data $_isBool");
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              final isPresent = _isBool
                  .indexWhere((element) => element["index"] == panelIndex);
              if (isPresent > -1) {
                _isBool.insert(isPresent, {
                  "index": panelIndex,
                  "flag": !isExpanded,
                });
              } else {
                _isBool.add({
                  "index": panelIndex,
                  "flag": !isExpanded,
                });
              }
            });
          },
          children: [
            ...widget.data.asMap().entries.map((item) {
              final List isBool = _isBool.isNotEmpty
                  ? _isBool.where((i) => i["index"] == item.key).toList()
                  : [];

              return ExpansionPanel(
                  isExpanded: isBool.isNotEmpty ? isBool[0]["flag"] : false,
                  headerBuilder: (context, isExpanded) =>
                      Text(item.value.title),
                  body: Container(
                    child: Text(item.value.body),
                  ));
            }),
          ]),
    );
  }
}

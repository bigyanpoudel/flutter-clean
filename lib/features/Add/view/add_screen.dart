import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app/features/Add/bloc/add_provider.dart';
import 'package:test_app/features/Add/data/add_model.dart';

class AddScreen extends ConsumerWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final addHandler = ref.watch(addProvider);
    log("data ${addHandler.todoList}");
    final todoList = addHandler.todoList;
    return Scaffold(
      body: ListView.builder(
        itemBuilder: ((context, index) => Card(
              elevation: 1,
              child: ListTile(
                leading: GestureDetector(
                    onTap: () {
                      showBottomsheetHandler(
                          context, size, addHandler, todoList[index].id);
                    },
                    child: const Icon(
                      Icons.edit,
                      color: Colors.blue,
                    )),
                title: Text(todoList[index].title),
                subtitle: Text(todoList[index].subTitle),
                trailing: GestureDetector(
                  onTap: () {
                    addHandler.removeModelData(todoList[index].id);
                  },
                  child: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ),
            )),
        itemCount: todoList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomsheetHandler(context, size, addHandler, null);
        },
        backgroundColor: Colors.green.shade400,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  showBottomsheetHandler(
      BuildContext context, Size size, AddNotifier addHandler, int? id) async {
    final formKey = GlobalKey<FormBuilderState>();
    final AddModel? data = id != null ? addHandler.getDataById(id) : null;

    return showModalBottomSheet(
        context: context,
        enableDrag: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        builder: (context) => SizedBox(
              height: size.height * 0.5,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 15, horizontal: size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [Text("Hello this is title")],
                    ),
                  ),
                  const Divider(),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: size.width * 0.02),
                    child: FormBuilder(
                      key: formKey,
                      child: Column(
                        children: [
                          FormBuilderTextField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            name: 'title',
                            initialValue: data?.title,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              hintText: "Enter title",
                            ),
                            validator: FormBuilderValidators.required(
                                errorText: "Title is required*"),
                          ),
                          const SizedBox(height: 10),
                          FormBuilderTextField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            name: 'subTitle',
                            initialValue: data?.title,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              hintText: "Enter sub title",
                            ),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(
                                  errorText: "Subtitle is required")
                            ]),
                          ),
                          const SizedBox(height: 10),
                          MaterialButton(
                            onPressed: () {
                              final bool isValid =
                                  formKey.currentState!.saveAndValidate();
                              if (isValid) {
                                formKey.currentState!.save();
                                addHandler.addModelData({
                                  "title": formKey.currentState!.value["title"],
                                  "subTitle":
                                      formKey.currentState!.value["subTitle"],
                                });
                                Navigator.of(context).pop();
                              }
                            },
                            color: Colors.green,
                            minWidth: size.width,
                            child: Text(
                              "Save",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}

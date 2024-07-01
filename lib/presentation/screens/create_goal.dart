import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:vph_web_date_picker/vph_web_date_picker.dart';

final textFieldKey = GlobalKey();

class CreateGoalScreen extends StatefulWidget {
  const CreateGoalScreen({super.key});

  @override
  State<CreateGoalScreen> createState() => _CreateGoalScreen();
}

class _CreateGoalScreen extends State<CreateGoalScreen> {
  var _selectedDate = DateTime.now();
  var isTextFieldActive = false;
  final _controller = TextEditingController();
  Image? _pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create a goal",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: isTextFieldActive
          ? null
          : Container(
              constraints: const BoxConstraints(maxWidth: 300),
              height: 44,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.primary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Center(
                    child: Text(
                  "Create a goal",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Colors.white),
                )),
              )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SizedBox(
                  width: 250,
                  height: 150,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                    onPressed: () async {
                      Uint8List? fromPicker =
                          await ImagePickerWeb.getImageAsBytes();
                      setState(() {
                        if (fromPicker != null) {
                          _pickedImage = Image.memory(
                            fromPicker,
                            fit: BoxFit.cover,
                          );
                        }
                      });
                    },
                    child: _pickedImage ?? const Icon(Icons.add_a_photo),
                  ),
                ),
              ),
              Text(
                "Name",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                    onTapOutside: (event) {
                      setState(() {
                        isTextFieldActive = false;
                      });
                    },
                    onTap: () => setState(() {
                      isTextFieldActive = true;
                    }),
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        labelText: "What is your goal?",
                        labelStyle: Theme.of(context).textTheme.titleSmall),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
              Text(
                "Due date",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: SizedBox(
                  width: 250,
                  height: 47,
                  child: TextField(
                      onTapOutside: (event) {
                        setState(() {
                          isTextFieldActive = false;
                        });
                      },
                      autofocus: true,
                      key: textFieldKey,
                      controller: _controller,
                      onTap: () async {
                        isTextFieldActive = true;
                        final pickedDate = await showWebDatePicker(
                          context: textFieldKey.currentContext!,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate:
                              DateTime.now().add(const Duration(days: 14000)),
                          //width: 300,
                          //withoutActionButtons: true,
                          //weekendDaysColor: Colors.red,
                          //firstDayOfWeekIndex: 1,
                        );
                        if (pickedDate != null) {
                          _selectedDate = pickedDate;
                          _controller.text =
                              "${pickedDate.year.toString()}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
                        }
                      },
                      style: Theme.of(context).textTheme.bodySmall,
                      decoration: InputDecoration(
                        labelText: "Set a due date",
                        labelStyle: Theme.of(context).textTheme.titleSmall,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      )),
                ),
              ),
              Text(
                "Motivation",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                    onTapOutside: (event) {
                      setState(() {
                        isTextFieldActive = false;
                      });
                    },
                    onTap: () => setState(() {
                      isTextFieldActive = true;
                    }),
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        labelText: "Why you want to achieve it?",
                        labelStyle: Theme.of(context).textTheme.titleSmall),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

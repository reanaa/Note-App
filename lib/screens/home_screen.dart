import 'package:NoteApp/data/notiz_data.dart';
import 'package:NoteApp/widgets/color_container_note.dart';
import 'package:flutter/material.dart';

class NoteListScreen extends StatefulWidget {
  NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {
  TextEditingController titleEditingController = TextEditingController();

  TextEditingController textEditingController = TextEditingController();
  late TextEditingController editingTitleEditingController =
      TextEditingController();
  late TextEditingController editingTextEditingController =
      TextEditingController();
  Color colorContainerNotiz = Colors.blue;

  List<Notiz> notizes = [
    Notiz(
      "Example",
      "Example Text",
      Colors.lime,
    ),
  ];

  clearData() {
    titleEditingController.clear();
    textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notiz",
          style: TextStyle(
            fontSize: 25,
            decorationColor: Colors.red,
            color: Colors.blue,
          ),
        ),
        // backgroundColor: Colors.purple,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: notizes.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onDoubleTap: () {
                setState(() {
                  editingTextEditingController.value = TextEditingValue(
                    text: notizes[index].text,
                  );
                  editingTitleEditingController.value = TextEditingValue(
                    text: notizes[index].title,
                  );
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        insetAnimationCurve: Curves.linear,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        insetPadding: const EdgeInsets.all(16),
                        shadowColor: notizes[index].color,
                        insetAnimationDuration: const Duration(milliseconds: 1),
                        elevation: 25,
                        backgroundColor: notizes[index].color.withOpacity(.9),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 15.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(55),
                                  color: notizes[index].color.withOpacity(.5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 16.0, bottom: 16),
                                  child: TextField(
                                    style: const TextStyle(color: Colors.white),
                                    scribbleEnabled: true,
                                    enableInteractiveSelection: true,
                                    controller: editingTitleEditingController,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      label: Text(
                                        "Title",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 1),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(55),
                                  color: notizes[index].color.withOpacity(.5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 16.0, bottom: 16),
                                  child: TextFormField(
                                    style: const TextStyle(color: Colors.white),
                                    scribbleEnabled: true,
                                    maxLines: null,
                                    enableInteractiveSelection: true,
                                    controller: editingTextEditingController,
                                    keyboardType: TextInputType.multiline,
                                    decoration: const InputDecoration(
                                        label: Text(
                                          "Beschreibung",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Wrap(
                                alignment: WrapAlignment.start,
                                children: [
                                  colorContainerNote(
                                    Colors.blue,
                                    () {
                                      colorContainerNotiz = Colors.blue;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.green,
                                    () {
                                      colorContainerNotiz = Colors.green;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.orange,
                                    () {
                                      colorContainerNotiz = Colors.orange;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.yellow,
                                    () {
                                      colorContainerNotiz = Colors.yellow;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.red,
                                    () {
                                      colorContainerNotiz = Colors.red;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.deepPurple,
                                    () {
                                      colorContainerNotiz = Colors.deepPurple;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.purple,
                                    () {
                                      colorContainerNotiz = Colors.purple;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.lime,
                                    () {
                                      colorContainerNotiz = Colors.lime;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.limeAccent,
                                    () {
                                      colorContainerNotiz = Colors.limeAccent;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.teal,
                                    () {
                                      colorContainerNotiz = Colors.teal;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.redAccent,
                                    () {
                                      colorContainerNotiz = Colors.redAccent;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                  colorContainerNote(
                                    Colors.greenAccent,
                                    () {
                                      colorContainerNotiz = Colors.greenAccent;
                                      notizes[index].color =
                                          colorContainerNotiz;
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Wrap(
                                  runAlignment: WrapAlignment.center,
                                  runSpacing: 5,
                                  spacing: 5,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "Schließen",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(
                                          () {
                                            Navigator.pop(context);
                                            notizes[index].text =
                                                editingTextEditingController
                                                    .text;
                                            notizes[index].title =
                                                editingTitleEditingController
                                                    .text;
                                          },
                                        );
                                      },
                                      child: Text(
                                        "Bearbeiten",
                                        style: TextStyle(
                                            color: notizes[index].color,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                });
              },
              child: ListTile(
                title: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    child: Text(
                      notizes[index].title,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                subtitle: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: notizes[index].color,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: notizes[index].color,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12.0),
                      child: Text(
                        notizes[index].text,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return addNoteDialog(context, colorContainerNotiz);
              },
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget addNoteDialog(BuildContext context, Color colorContainerNotiz) {
    return Dialog(
      backgroundColor: colorContainerNotiz,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Dies ist ein Dialog",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.sizeOf(context).width - 150,
              decoration: BoxDecoration(
                color: colorContainerNotiz,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(49),
                  topRight: Radius.circular(49),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextField(
                    controller: titleEditingController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      label: Text(
                        "Title",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: MediaQuery.sizeOf(context).width - 150,
              decoration: BoxDecoration(
                color: colorContainerNotiz,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(49),
                  topRight: Radius.circular(49),
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: textEditingController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      label: Text(
                        "Beschreibung",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                colorContainerNote(
                  Colors.blue,
                  () {
                    setState(() {
                      colorContainerNotiz = Colors.blue;
                    });
                  },
                ),
                colorContainerNote(
                  Colors.green,
                  () {
                    setState(() {
                      colorContainerNotiz = Colors.green;
                    });
                  },
                ),
                colorContainerNote(
                  Colors.orange,
                  () {
                    colorContainerNotiz = Colors.orange;
                  },
                ),
                colorContainerNote(
                  Colors.yellow,
                  () {
                    colorContainerNotiz = Colors.yellow;
                  },
                ),
                colorContainerNote(
                  Colors.red,
                  () {
                    colorContainerNotiz = Colors.red;
                  },
                ),
                colorContainerNote(
                  Colors.deepPurple,
                  () {
                    colorContainerNotiz = Colors.deepPurple;
                  },
                ),
                colorContainerNote(
                  Colors.purple,
                  () {
                    colorContainerNotiz = Colors.purple;
                  },
                ),
                colorContainerNote(
                  Colors.lime,
                  () {
                    colorContainerNotiz = Colors.lime;
                  },
                ),
                colorContainerNote(
                  Colors.limeAccent,
                  () {
                    colorContainerNotiz = Colors.limeAccent;
                  },
                ),
                colorContainerNote(
                  Colors.teal,
                  () {
                    colorContainerNotiz = Colors.teal;
                  },
                ),
                colorContainerNote(
                  Colors.redAccent,
                  () {
                    colorContainerNotiz = Colors.redAccent;
                  },
                ),
                colorContainerNote(
                  Colors.greenAccent,
                  () {
                    colorContainerNotiz = Colors.green;
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Wrap(
                // crossAxisAlignment: WrapCrossAlignment.end,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 5,
                runSpacing: 5,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Schließen",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (textEditingController.text.isNotEmpty &&
                          titleEditingController.text.isNotEmpty) {
                        notizes.add(Notiz(
                          textEditingController.text,
                          titleEditingController.text,
                          colorContainerNotiz,
                        ));
                        clearData();
                        setState(() {});

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.green,
                            content: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 55,
                            ),
                          ),
                        );
                        Navigator.pop(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              "Etwas ist schief gelaufen! Bitte überprüfen Sie alles, bevor Sie auf 'Hinfügen' drücken",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                        Navigator.pop(context);
                      }
                    },
                    child: const Text("Hinfügen"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'globals.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stepper_gif(),
  ));
}

class Stepper_gif extends StatefulWidget {
  const Stepper_gif({Key? key}) : super(key: key);

  @override
  State<Stepper_gif> createState() => _Stepper_gifState();
}

class _Stepper_gifState extends State<Stepper_gif> {
  final GlobalKey<FormState> _stepperkey = GlobalKey();
  final GlobalKey<FormState> addContactFormKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController currentlocationController =
      TextEditingController();
  final TextEditingController nationalitiesController = TextEditingController();
  final TextEditingController religiousController = TextEditingController();
  final TextEditingController languageController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  String name = "";
  String email = "";
  String phone = "";
  String dob = "";
  String gender = "";
  String currentlocation = "";
  String nationalities = "";
  String religious = "";
  String language = "";
  String bio = "";

  int initialStepperIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Edit Your Profile'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [
                const Color(0xff53b5ea),
                const Color(0xff6bcfd2),
                const Color(0xff95e5a9).withOpacity(0.8)
              ])),
        ),
      ),
      body: Stepper(
        physics: const ScrollPhysics(),
        currentStep: initialStepperIndex,
        controlsBuilder: (context, _) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (initialStepperIndex < 10) {
                        initialStepperIndex++;
                      } else if (initialStepperIndex > 10 &&
                          initialStepperIndex < 10) {
                        initialStepperIndex++;
                      }
                    });
                  },
                  child: const Text(
                    "CONTINUE",
                  )),
              const SizedBox(width: 15),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      if (initialStepperIndex > 0) {
                        initialStepperIndex--;
                      }
                    });
                  },
                  child: const Text(
                    "CANCEL",
                  )),
            ],
          );
        },
        steps: [
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Profile Picture",
                ),
              ],
            ),
            content: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundImage: (Global.image != null)
                            ? FileImage(Global.image!)
                            : null,
                        backgroundColor: Colors.grey.withOpacity(0.7),
                        child: (Global.image != null)
                            ? const Text("")
                            : const Text(
                                "ADD",
                                style: TextStyle(
                                  color: Color(0xff282828),
                                ),
                              ),
                      ),
                      FloatingActionButton(
                        mini: true,
                        onPressed: () async {
                          XFile? pickedFile = await _picker.pickImage(
                            source: ImageSource.camera,
                          );
                          setState(() {
                            Global.image = File(pickedFile!.path);
                          });
                        },
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "NAME",
                ),
              ],
            ),
            content: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter name ...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    name = val!;
                  },
                  decoration: const InputDecoration(
                    hintText: "Name",
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Phone",
                ),
              ],
            ),
            content: Column(
              children: [
                TextFormField(
                  controller: phoneController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter phone no ...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    phone = val!;
                  },
                  decoration: const InputDecoration(
                    hintText: "+91 9100000011 ...",
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Email",
                ),
              ],
            ),
            content: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter email ...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    email = val!;
                  },
                  decoration: const InputDecoration(
                    hintText: "xyz023@gmail.com",
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "DOB",
                ),
              ],
            ),
            content: Column(
              children: [
                TextFormField(
                  controller: dobController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter dob ...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    dob = val!;
                  },
                  decoration: const InputDecoration(
                    hintText: "2/3/2022",
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Gender",
                ),
              ],
            ),
            content: Column(
              children: [
                TextFormField(
                  controller: genderController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter gender ...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    gender = val!;
                  },
                  decoration: const InputDecoration(
                      // hintText: "",
                      ),
                ),
              ],
            ),
          ),
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Current Location",
                ),
              ],
            ),
            content: Column(
              children: [
                TextFormField(
                  controller: currentlocationController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter current_location";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    currentlocation = val!;
                  },
                  decoration: const InputDecoration(
                    hintText: "surat",
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Nationalities",
                ),
              ],
            ),
            content: Column(
              children: [
                TextFormField(
                  controller: nationalitiesController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter nationalities";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    nationalities = val!;
                  },
                  decoration: const InputDecoration(
                    hintText: "Indian",
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Religious",
                ),
              ],
            ),
            content: Column(
              children: [
                TextFormField(
                  controller: religiousController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter religious .....";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    religious = val!;
                  },
                  decoration: const InputDecoration(
                    hintText: "Hindu",
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Language",
                ),
              ],
            ),
            content: Column(
              children: [
                TextFormField(
                  controller: languageController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter language ...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    language = val!;
                  },
                  decoration: const InputDecoration(
                    // prefixIcon: Icon(Icons.flag),
                    hintText: "english",
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Biography",
                ),
              ],
            ),
            content: Column(
              children: [
                TextFormField(
                  controller: bioController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter bio ....";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    bio = val!;
                  },
                  decoration: const InputDecoration(
                    hintText: "xyz",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

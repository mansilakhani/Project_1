import 'package:flutter/material.dart';
import 'package:stepperpng/widgets/login.dart';
import 'package:stepperpng/widgets/signup.dart';

class StepperApp extends StatefulWidget {
  const StepperApp({Key? key}) : super(key: key);

  @override
  State<StepperApp> createState() => _StepperAppState();
}

class _StepperAppState extends State<StepperApp> {
  final GlobalKey<FormState> stepper_formKey = GlobalKey<FormState>();
  final TextEditingController name_controller = TextEditingController();
  final TextEditingController re_psw_controller = TextEditingController();

  final TextEditingController email_controller = TextEditingController();
  final TextEditingController psw_controller = TextEditingController();

  static int current_step = 0;
  static bool loginSucess = false;

  List<Step> Steps = [
    Step(
      title: const Text("Sign Up"),
      content: signup_Ui(),
      isActive: true,
    ),
    Step(
      title: const Text("Log In"),
      content: loginUi(),
      isActive: true,
    ),
    Step(
      title: const Text("Home"),
      content: HomeScreen("Stepper App"),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    String myAppTitle = "Stepper App";
    return Scaffold(
        appBar: AppBar(
          title: Text(myAppTitle),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          shrinkWrap: true,
          reverse: true,
          children: [
            Stepper(
              steps: Steps,
              type: StepperType.vertical,
              currentStep: current_step,
              onStepContinue: () {
                setState(() {
                  if (current_step == 0) {
                    if (!(name_controller.value.text
                        .toString()
                        .trim()
                        .isNotEmpty)) {
                    } else if (!(psw_controller.value.text
                        .toString()
                        .trim()
                        .isNotEmpty)) {
                    } else if (!(re_psw_controller.value.text
                        .toString()
                        .trim()
                        .isNotEmpty)) {
                    } else {
                      if (re_psw_controller.value.text
                          .toString()
                          .endsWith(psw_controller.value.text.toString())) {
                        if (current_step < Steps.length - 1) {
                          current_step = current_step + 1;
                        } else {
                          current_step = 0;
                        }
                      }
                    }
                  } else if (current_step == 1) {
                    if (!(email_controller.value.text.trim().toString().length >
                        1)) {
                    } else if (!(psw_controller.value.text
                            .trim()
                            .toString()
                            .length >
                        1)) {
                    } else {
                      if (current_step < Steps.length - 1) {
                        current_step = current_step + 1;
                      } else {
                        current_step = 0;
                      }
                    }
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (current_step > 0) {
                    current_step = current_step - 1;
                  } else {
                    current_step = 0;
                  }
                });
              },
              onStepTapped: (step) {
                setState(() {
                  current_step = step;
                });
              },
            )
          ],
        ));
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen(this.userName);

  String userName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Text("Welcome,    ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20.0)),
                  Row(
                    children: [],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(userName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0))
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(80),
          child: Center(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                "assets/images/stepperlogo.png",
              ),
            ),
          ),
        ),
      ],
    );
  }
}

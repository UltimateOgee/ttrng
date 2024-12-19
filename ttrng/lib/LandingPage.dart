import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'TTRNG',
          style: TextStyle(fontSize: 60),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[400],
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: 1400,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: const Text(
                      'Need a Tutor? Get started here',
                      style: TextStyle(fontSize: 70),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.5, // Button width
                    height: size.height * 0.05, // Button height
                    child: OutlinedButton(
                      onPressed: () {
                        // Button onPressed action
                        showAlertDialog(context);
                      },
                      child: Text(
                        'I\'m a Student',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: size.width * 0.3, // Button width
                    height: size.height * 0.03, // Button height
                    child: OutlinedButton(
                      onPressed: () {
                        // Button onPressed action
                      },
                      child: Text(
                        'I\'m a Teacher',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                    child: Text('about us Info about ttrng here'),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                    child: Text('paragraph on services we offer'),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                    child: Text('testimonial Info about ttrng here'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed:  () {
       Navigator.of(context).pop();
    },
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("login info here"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
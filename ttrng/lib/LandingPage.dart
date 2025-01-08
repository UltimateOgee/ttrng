import 'package:flutter/material.dart';
import 'package:ttrng/widgets/ExampleReviewWidget.dart';

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
      body: Container(
        color: Colors.white,
        child: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 300,
                      child: const Text(
                        'Need a Tutor? Get started here',
                        style: TextStyle(fontSize: 70),
                      ),
                    ),
                    Container(
                      height: 100,
                      alignment: Alignment.center,
                      child: SizedBox(
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: size.width * 0.3, // Button width
                        height: size.height * 0.04, // Button height
                        child: OutlinedButton(
                          onPressed: () {
                            // Button onPressed action
                            showAlertDialog(context);
                          },
                          child: Text(
                            'I\'m a Teacher',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 600,
                      width: double.infinity,
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                    "Tutoring that makes sense for both you and your wallet.",
                                    style: TextStyle(fontSize: 50)),
                                Text(
                                    "TTRNG offers flexibility for tutors you want, at the price you want.",
                                    style: TextStyle(fontSize: 30))
                              ],
                            ),
                          ),
                          VerticalDivider(width: 1.0),
                          Expanded(
                              child: const Image(
                            image: NetworkImage(
                                'https://epe.brightspotcdn.com/dims4/default/3eb4faf/2147483647/strip/true/crop/2980x2022+10+0/resize/840x570!/format/webp/quality/90/?url=https%3A%2F%2Fepe-brightspot.s3.us-east-1.amazonaws.com%2Fce%2F1b%2F4dbafb4c44e0921e72cd7c242b01%2Fteacher-tutor-student-022023-187244393.jpg'),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      width: double.infinity,
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)),
                      child: Row(
                        children: [
                          Expanded(
                              child: const Image(
                            image: NetworkImage(
                                'https://epe.brightspotcdn.com/dims4/default/3eb4faf/2147483647/strip/true/crop/2980x2022+10+0/resize/840x570!/format/webp/quality/90/?url=https%3A%2F%2Fepe-brightspot.s3.us-east-1.amazonaws.com%2Fce%2F1b%2F4dbafb4c44e0921e72cd7c242b01%2Fteacher-tutor-student-022023-187244393.jpg'),
                          )),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Why TTRNG?",
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold)),
                                Padding(padding: EdgeInsets.all(16.0)),
                                Text("- Find tutors easily",
                                    style: TextStyle(fontSize: 35)),
                                Padding(padding: EdgeInsets.all(16.0)),
                                Text("- Cheaper tutors",
                                    style: TextStyle(fontSize: 35)),
                                Padding(padding: EdgeInsets.all(16.0)),
                                Text("- Tutors earn more",
                                    style: TextStyle(fontSize: 35))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      width: double.infinity,
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(3.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey[700],
                          border: Border.all(color: Colors.blueAccent)),
                      child: Text(
                        'TTRNG offers affordable, high-quality academic support for students of all ages and levels. We provide personalized tutoring sessions in a wide range of subjects, including mathematics, science, English, and history, with expert tutors who are committed to helping students succeed. Whether you need help with homework, preparing for exams, or understanding challenging concepts, our platform connects you with experienced tutors at budget-friendly rates. With flexible scheduling and the option for one-on-one or group sessions, our services are designed to fit your learning needs and budget. Additionally, we offer specialized test preparation programs, college application support, and study skills workshops to ensure students are well-equipped to reach their academic goals.',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 500,
                      width: double.infinity,
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: ExampleReviewWidget(),
                            ),
                          ),
                          VerticalDivider(width: 15),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: ExampleReviewWidget(),
                            ),
                          ),
                          VerticalDivider(width: 15),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: ExampleReviewWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed: () {},
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

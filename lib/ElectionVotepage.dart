import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screenshot_share/Widgets/TextComponent.dart';
import 'package:screenshot_share/constant/App_color.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

class ElectionVotePage extends StatefulWidget {
  const ElectionVotePage({super.key, required this.title});

  final String title;

  @override
  _ElectionVotePageState createState() => _ElectionVotePageState();
}

class _ElectionVotePageState extends State<ElectionVotePage> {
  bool submition = false;
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = false;

  GlobalKey previewContainer = GlobalKey();
  int originalSize = 800;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RepaintBoundary(
                key: previewContainer,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 5),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = true;
                              b = false;
                              c = false;
                              d = false;
                              e = false;
                              f = false;
                            });
                          },
                          child: ElectionFiled(
                            checked: a,
                            size: size,
                            Englishname: "Communist Party of Sri Lanka",
                            SinhalaName: "ජ.වි.පෙ",
                            Tamilname: "எஸ். ஜே. பி",
                            electionimage: "call.png",
                            electionnum: "14",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = false;
                              b = true;
                              c = false;
                              d = false;
                              e = false;
                              f = false;
                            });
                          },
                          child: ElectionFiled(
                            checked: b,
                            size: size,
                            Englishname: "Samagi Jana Balawegaya",
                            SinhalaName: "ස.ජ.බ ",
                            Tamilname: "ஜே. வி.பி",
                            electionimage: "flower.png",
                            electionnum: "14",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = false;
                              b = false;
                              c = true;
                              d = false;
                              e = false;
                              f = false;
                            });
                          },
                          child: ElectionFiled(
                            checked: c,
                            size: size,
                            Englishname: "Communist Party of Sri Lanka",
                            SinhalaName: "එ.ජා.ප",
                            Tamilname: "எஸ். ஜே. பி",
                            electionimage: "baloon.png",
                            electionnum: "14",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = false;
                              b = false;
                              c = false;
                              d = true;
                              e = false;
                              f = false;
                            });
                          },
                          child: ElectionFiled(
                            checked: d,
                            size: size,
                            Englishname: "Communist Party of Sri Lanka",
                            SinhalaName: "bhhhsfsfs",
                            Tamilname: "hhhsgs",
                            electionimage: "call.png",
                            electionnum: "14",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = false;
                              b = false;
                              c = false;
                              d = false;
                              e = true;
                              f = false;
                            });
                          },
                          child: ElectionFiled(
                            checked: e,
                            size: size,
                            Englishname: "Socialist Party of Sri Lanka",
                            SinhalaName: "මු.කො",
                            Tamilname: "மு.கோ",
                            electionimage: "baloon.png",
                            electionnum: "14",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = false;
                              b = false;
                              c = false;
                              d = false;
                              e = false;
                              f = true;
                            });
                          },
                          child: ElectionFiled(
                            checked: f,
                            size: size,
                            Englishname: "Socialist Party of Sri Lanka",
                            SinhalaName: "bhhhsfsfs",
                            Tamilname: "hhhsgs",
                            electionimage: "kude.png",
                            electionnum: "14",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: a == true ||
              b == true ||
              c == true ||
              d == true ||
              e == true ||
              f == true
          ? InkWell(
              onTap: () async {
                setState(() {
                  submition = true;
                });
              },
              child: submition
                  ? InkWell(
                      onTap: () {
                        ShareFilesAndScreenshotWidgets().shareScreenshot(
                            previewContainer,
                            originalSize,
                            "Title",
                            "Name.png",
                            "image/png",
                            text: "This is the Election Form!");
                      },
                      child: Icon(
                        Icons.fingerprint,
                        size: 100,
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.green,
                      ),
                      height: 70,
                      width: 100,
                      child: Center(
                        child: TextComponent(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontsize: 25,
                            text: "Next"),
                      ),
                    ),
            )
          : Container(),
    );
  }
}

class ElectionFiled extends StatefulWidget {
  ElectionFiled({
    super.key,
    required this.electionimage,
    required this.size,
    required this.Englishname,
    required this.SinhalaName,
    required this.Tamilname,
    required this.electionnum,
    required this.checked,
  });
  String Tamilname, SinhalaName, Englishname, electionnum, electionimage;

  final Size size;
  bool checked;

  @override
  State<ElectionFiled> createState() => _ElectionFiledState();
}

class _ElectionFiledState extends State<ElectionFiled> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: widget.size.width / 5.25,
          width: widget.size.width / 1.85,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // You can set the color of the border here
              width: 2.0, // You can set the width of the border here
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextComponent(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontsize: 10,
                        text: widget.SinhalaName),
                    TextComponent(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontsize: 10,
                        text: widget.Englishname),
                    TextComponent(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontsize: 10,
                        text: widget.Tamilname),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/' + widget.electionimage,
                  height: 50,
                  width: 50,
                )
              ],
            ),
          ),
        ),
        Container(
          height: widget.size.width / 5.25,
          width: widget.size.width / 5,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // You can set the color of the border here
              width: 2.0, // You can set the width of the border here
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextComponent(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontsize: 20,
                    text: widget.electionnum),
              )
            ],
          ),
        ),
        Container(
            height: widget.size.width / 5.25,
            width: widget.size.width / 4.25,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // You can set the color of the border here
                width: 2.0, // You can set the width of the border here
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 20,
                  width: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors
                          .black, // You can set the color of the border here
                      width: 2.0, // You can set the width of the border here
                    ),
                  ),
                  child: widget.checked
                      ? Image.asset(
                          'assets/images/kathire.png',
                          height: 40,
                          width: 40,
                        )
                      : Container()),
            ))
      ],
    );
  }
}

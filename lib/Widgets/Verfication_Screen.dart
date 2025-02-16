// ignore: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screenshot_share/ElectionVotepage.dart';
import 'package:screenshot_share/Widgets/Lable_Text.dart';
import 'package:screenshot_share/Widgets/Rouned_boutton.dart';
import 'package:screenshot_share/Widgets/TextComponent.dart';
import 'package:screenshot_share/constant/App_color.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _passwordVisible = true;
  String token = "";
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordContrller = TextEditingController();
  AutovalidateMode switched = AutovalidateMode.disabled;
  final _EmailformKey = GlobalKey<FormState>();
  final _UserNAMEformKey = GlobalKey<FormState>();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UpperSection(),
              Expanded(
                flex: 3,
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColors.cardcolor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: TextComponent(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w700,
                                fontsize: 24,
                                text:
                                    'ඔබගේ හැඳුනුම් අංකය සහ ඇඟිලි සලකුණ ඇතුළත් කරන්න \n Enter your ID number and fingerprint ',
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            lableField(
                              " හැඳුනුම් අංකය / ID number ",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Form(
                              key: _EmailformKey,
                              autovalidateMode: switched,
                              child: TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.name,
                                focusNode: emailFocusNode,
                                style: const TextStyle(
                                  fontFamily: 'inter',
                                  fontSize: 14,
                                  color: AppColors.primaryColor,
                                ),
                                decoration: const InputDecoration(
                                  hintStyle: TextStyle(
                                    fontFamily: 'inter',
                                    fontSize: 14,
                                    color: Color(0xFFBCBCBC),
                                  ),
                                  hintText:
                                      " ඔබගේ හැඳුනුම් අංකය / Your ID number",
                                  filled: true,
                                  fillColor: AppColors.secondaryColor,
                                  contentPadding: EdgeInsets.all(11.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                      width: 2.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors
                                          .grey, // Add your desired border color here
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'හැඳුනුම්පත අංකය අවශ්‍ය වේ \n ID number is required';
                                  }

                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // lableField(
                            //   "Password",
                            // ),
                            // const SizedBox(
                            //   height: 10,
                            // ),
                            // Form(
                            //   key: _UserNAMEformKey,
                            //   autovalidateMode: switched,
                            //   child: TextFormField(
                            //     obscureText: _passwordVisible,
                            //     controller: passwordContrller,
                            //     keyboardType: TextInputType.name,
                            //     focusNode: passwordFocusNode,
                            //     style: const TextStyle(
                            //       fontFamily: 'inter',
                            //       fontSize: 14,
                            //       color: AppColors.primaryColor,
                            //     ),
                            //     decoration: InputDecoration(
                            //       suffix: InkWell(
                            //         onTap: () {
                            //           setState(() {
                            //             _passwordVisible = !_passwordVisible;
                            //           });
                            //         },
                            //         child: Padding(
                            //           padding: const EdgeInsets.only(top: 2),
                            //           child: Icon(
                            //             // Based on passwordVisible state choose the icon
                            //             _passwordVisible
                            //                 ? Icons.visibility
                            //                 : Icons.visibility_off,
                            //             color:
                            //                 Theme.of(context).primaryColorDark,
                            //           ),
                            //         ),
                            //       ),
                            //       hintStyle: TextStyle(
                            //         fontFamily: 'inter',
                            //         fontSize: 14,
                            //         color: Color(0xFFBCBCBC),
                            //       ),
                            //       hintText: "Your Password",
                            //       filled: true,
                            //       fillColor: AppColors.secondaryColor,
                            //       contentPadding: EdgeInsets.all(11.0),
                            //       focusedBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.all(
                            //           Radius.circular(5.0),
                            //         ),
                            //         borderSide: BorderSide(
                            //           color: Colors.blue,
                            //           width: 2.0,
                            //         ),
                            //       ),
                            //       enabledBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.all(
                            //           Radius.circular(5.0),
                            //         ),
                            //         borderSide: BorderSide(
                            //           color: Colors
                            //               .grey, // Add your desired border color here
                            //           width: 1.0,
                            //         ),
                            //       ),
                            //     ),
                            //     validator: (value) {
                            //       if (value == null || value.isEmpty) {
                            //         return 'Password is required';
                            //       }

                            //       // Remove any non-digit characters from the phone number

                            //       return null; // Return null if the phone number is valid
                            //     },
                            //     maxLength: 8,
                            //   ),
                            // ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: isLoading
                                  ? Center(child: CircularProgressIndicator())
                                  : SizedBox(
                                      width: 180,
                                      height: 50,
                                      child: RoundedButton(
                                          color: AppColors.drivercardactive,
                                          buttonText: "Login",
                                          onPress: () async {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ElectionVotePage(
                                                          title: emailController
                                                              .text),
                                                ));
                                          }),
                                    ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),

                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => SignIn(),
                                //     ));
                              },
                              child: Center(
                                child: TextComponent(
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontsize: 15,
                                  text: 'Create Account',
                                ),
                              ),
                            ),
                            // const Center(
                            //   child: Text(
                            //     "Or you can",
                            //     style: TextStyle(
                            //       color: Color(0xFF8F8F8F),
                            //       fontWeight: FontWeight.w400,
                            //       fontSize: 12,
                            //       fontFamily: 'inter',
                            //     ),
                            //   ),
                            // ),
                            // const SizedBox(
                            //   height: 12,
                            // ),
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //           builder: (context) => CreateProfile(),
                            //         ));
                            //   },
                            //   child: const Center(
                            //     child: Text(
                            //       "Create Account",
                            //       style: TextStyle(
                            //         color: Color(0xFF717171),
                            //         fontWeight: FontWeight.w800,
                            //         fontSize: 14,
                            //         fontFamily: 'inter',
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UpperSection extends StatelessWidget {
  const UpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: AppColors
                  .primaryColor, // Change the color to the desired background color
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: TextComponent(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontsize: 40,
                        text: 'අනන්‍යතාව තහවුරු කරගැනීම ',
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: TextComponent(
                        color: AppColors.drivercardnotactive,
                        fontWeight: FontWeight.w500,
                        fontsize: 18,
                        text: "Identity verification",
                      ),
                    ),
                    // Image(
                    //   image: AssetImage('assets/logo.png'),
                    //   height: 100,
                    //   width: 100,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

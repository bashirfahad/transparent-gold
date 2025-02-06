import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SendOtp extends StatefulWidget {
  final Function(String otp)? onSubmitOtp;
  final VoidCallback? onResendOtp;

  const SendOtp({Key? key, this.onSubmitOtp, this.onResendOtp}) : super(key: key);

  @override
  State<SendOtp> createState() => _SendOtpState();
}

class _SendOtpState extends State<SendOtp> {
  int _start = 60;
  late Timer _timer;
  bool _isResendEnabled = false;

  String get timerText {
    int minutes = (_start ~/ 60);
    int seconds = (_start % 60);
    String minutesStr = (minutes < 10) ? '0$minutes' : '$minutes';
    String secondsStr = (seconds < 10) ? '0$seconds' : '$seconds';
    return '$minutesStr:$secondsStr';
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    setState(() => _isResendEnabled = false);
    _start = 60;
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            _isResendEnabled = true;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to prevent memory leaks
    super.dispose();
  }

  void resendOtp() {
    if (_isResendEnabled) {
      widget.onResendOtp?.call(); // Call resend OTP logic from parent
      startTimer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black45,
                          border: Border.all(color: Colors.orangeAccent, width: 2),
                        ),
                        child: Center(
                          child: Icon(Icons.arrow_back_ios_new,
                              size: 20, color: Colors.orangeAccent),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Enter the ',
                            style: GoogleFonts.poppins(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          WidgetSpan(
                            child: GradientText(
                              'code',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                              colors: [
                                Color(0xff814D01),
                                Color(0xffF7C203),
                                Color(0xff814D01),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Enter the 4 digit code that we just sent to \n',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.white),
                        ),
                        WidgetSpan(
                          child: GradientText(
                            'email',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            colors: [
                              Color(0xff814D01),
                              Color(0xffF7C203),
                              Color(0xff814D01),
                            ],
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              OtpTextField(
                numberOfFields: 4,
                fieldWidth: 70,
                borderColor: Color(0xff185A80),
                enabledBorderColor: Colors.orangeAccent,
                filled: true,
                fillColor: Color(0xFFFFFFFF),
                focusedBorderColor: Color(0xff185A80),
                showFieldAsBox: true,
                textStyle: GoogleFonts.poppins(fontSize: 18, color: Colors.orangeAccent),
                borderRadius: BorderRadius.circular(10),
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  widget.onSubmitOtp?.call(verificationCode); // Trigger OTP verification logic
                },
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.timer_outlined, color: Colors.orangeAccent),
                          SizedBox(width: 5),
                          Text(
                            timerText,
                            style: TextStyle(fontSize: 16, color: Color(0xff252B5C)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Did not receive the OTP? ',
                    style: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
                  ),
                  InkWell(
                    onTap: resendOtp,
                    child: GradientText(
                      'Resend OTP',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                      colors: [
                        Color(0xff814D01),
                        Color(0xffF7C203),
                        Color(0xff814D01),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

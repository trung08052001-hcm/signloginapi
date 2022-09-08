import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_application_29/forpassword/newpassword.dart';

import '../quesstion/quesstion.dart';
import '../sign/homepage.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  String _errorMessage = '';
  int start = 180;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                height: size.height * 2 / 3,
                child: PageView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Expanded(
                                  child: Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Xác thực đổi mật khẩu",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue),
                                ),
                              )),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 15, 30, 10),
                                  child: TextFormField(
                                    maxLength: 6,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    obscureText: true,
                                    decoration: new InputDecoration(
                                      labelText: "Mã xác thực",
                                      suffixIcon: Icon(Icons.key_sharp),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      hintText: 'Gồm 6 chữ , số',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 30, 20),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.pink.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 60,
                                width: size.width * 0.8,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16.0),
                                      primary: Colors.white,
                                      textStyle: TextStyle(fontSize: 20)),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return newpassword();
                                    }));
                                  },
                                  child: Text('Gửi'),
                                ),
                              ),
                            ),
                            Center(
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "chưa nhận được mã ?    ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue)),
                                TextSpan(
                                    text: "$start",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue)),
                                TextSpan(
                                    text: "s",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue)),
                              ])),
                            ),
                            Container(
                              height: 30,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      startTime();
                                    },
                                    child: Text(
                                      'gửi lại  ',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 80,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Myhomepage();
                                      }));
                                    },
                                    child: Text(
                                      'Đăng nhập  ',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blue),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                    height: 30.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Quesstion();
                                      }));
                                    },
                                    child: Text(
                                      'Câu hỏi thường gặp ',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.blue),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startTime() {
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec, (timer) {
      if (start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          start--;
        });
      }
      ;
    });
  }
}

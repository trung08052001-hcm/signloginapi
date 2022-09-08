import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';

import 'package:flutter_application_29/forpassword/otp.dart';

import '../quesstion/quesstion.dart';
import '../sign/homepage.dart';

class ForPassword extends StatefulWidget {
  const ForPassword({Key? key}) : super(key: key);

  @override
  State<ForPassword> createState() => _ForPasswordState();
}

class _ForPasswordState extends State<ForPassword> {
  String _errorMessage = '';

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
                                  "Quên Mật Khẩu",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue),
                                ),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 30, 10),
                              child: Text("\n"),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 30, 10),
                              child: TextFormField(
                                maxLength: 20,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (val) {
                                  validateEmail(val);
                                },
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(20)
                                ],
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    hintText: 'nhập Email',
                                    suffixIcon: Icon(Icons.email),
                                    labelStyle: TextStyle(
                                        color: Color(0xff888888),
                                        fontSize: 20)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 30, 20),
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
                                      return OTP();
                                    }));
                                  },
                                  child: Text('Gửi'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  _errorMessage,
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
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

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email Không được để trống";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = " Email không hợp lệ";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }
}

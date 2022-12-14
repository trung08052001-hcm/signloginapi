import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../quesstion/quesstion.dart';
import '../sign/homepage.dart';

class newpassword extends StatefulWidget {
  const newpassword({Key? key}) : super(key: key);

  @override
  State<newpassword> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<newpassword> {
  final _formKey = GlobalKey<FormState>();
  // regular expression to check if string
  RegExp pass_valid = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
  //A function that validate user entered password
  bool validatePassword(String pass) {
    String _password = pass.trim();
    if (pass_valid.hasMatch(_password)) {
      return true;
    } else {
      return false;
    }
  }

  String? _password = "";
  bool _obscureText = true;
  bool _isloading = false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login(String username, password) async {
    try {
      Response response = await post(
          Uri.parse('https://portal.ggroup.vn:9070//token'),
          body: {'username': 'GS001341', 'password': 'Hung123'});

      if (response.statusCode == 400) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print('Login successfully');
        setState(() {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) {
            return Myhomepage();
          }), (route) => false);
        });
      } else {
        print("Fail");
      }
    } catch (e) {
      print(e.toString());
    }
  }

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
                            Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: Expanded(
                                          child: Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "?????t m???t kh???u m???i",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.blue),
                                        ),
                                      )),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                      height: 25.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 2, 30, 10),
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Please enter password";
                                          } else {
                                            //call function to check password
                                            bool result =
                                                validatePassword(value);
                                            if (result) {
                                              // create account event
                                              return null;
                                            } else {
                                              return " Password should contain Capital, small letter & Number & Special";
                                            }
                                          }
                                        },
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        obscureText: _obscureText,
                                        onSaved: (value) {
                                          _password = value;
                                        },
                                        decoration: new InputDecoration(
                                          labelText: " m???t kh???u m???i",
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _obscureText = !_obscureText;
                                              });
                                            },
                                            child: Icon(_obscureText
                                                ? Icons.visibility
                                                : Icons.visibility_off),
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          hintText: ' m???t kh???u m???i',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                      width: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 2, 30, 10),
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Please enter password";
                                          } else {
                                            //call function to check password
                                            bool result =
                                                validatePassword(value);
                                            if (result) {
                                              // create account event
                                              return null;
                                            } else {
                                              return " Password should contain Capital, small letter & Number & Special";
                                            }
                                          }
                                        },
                                        controller: passwordController,
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        obscureText: _obscureText,
                                        onSaved: (value) {
                                          _password = value;
                                        },
                                        decoration: new InputDecoration(
                                          labelText: "nh???p l???i m???t kh???u",
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _obscureText = !_obscureText;
                                              });
                                            },
                                            child: Icon(_obscureText
                                                ? Icons.visibility
                                                : Icons.visibility_off),
                                          ),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          hintText: 'nh???p l???i m???t kh???u',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 20, 30, 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.pink.withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: 60,
                                        width: size.width * 0.8,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              primary: Colors.white,
                                              textStyle:
                                                  TextStyle(fontSize: 20)),
                                          onPressed: () {
                                            login(
                                                usernameController.text
                                                    .toString(),
                                                passwordController.text
                                                    .toString());
                                            _formKey.currentState!
                                                .save(); // I added this line which does nothing
                                            if (_formKey.currentState!
                                                .validate()) {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return Container();
                                                  },
                                                ),
                                              );
                                            }
                                            // third partypackage alert function
                                          },
                                          // onPressed: () {
                                          //   _formKey.currentState!.validate();
                                          //   login(
                                          //       usernameController.text
                                          //           .toString(),
                                          //       passwordController.text
                                          //           .toString());
                                          // },
                                          child: Text('????ng nh???p'),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
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
                                      '????ng nh???p ',
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
                                      'C??u h???i th?????ng g???p ',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.blue),
                                    ),
                                  ),
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
}

import 'package:flutter/material.dart';

class Quesstion extends StatefulWidget {
  const Quesstion({Key? key}) : super(key: key);

  @override
  State<Quesstion> createState() => _QuesstionState();
}

class _QuesstionState extends State<Quesstion> {
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
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                              padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                              child: Expanded(
                                  child: Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Câu hỏi thường gặp",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue),
                                ),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        side: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 250, 240, 240)))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: ShapeDecoration(
                                          color: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32.0),
                                              side: BorderSide(
                                                  width: 10,
                                                  color: Colors.blue))),
                                      child: Center(
                                          child: Text(" 1 ",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white))),
                                    ),
                                    Flexible(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(32.0),
                                                side: BorderSide(
                                                    width: 10,
                                                    color: Colors.white))),
                                        child: Text(
                                            "Hướng dẫn share quyền Google Analytics",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        side: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 250, 240, 240)))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: ShapeDecoration(
                                          color: Colors.green,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32.0),
                                              side: BorderSide(
                                                  width: 10,
                                                  color: Colors.green))),
                                      child: Center(
                                          child: Text(" 2 ",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white))),
                                    ),
                                    Flexible(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(32.0),
                                                side: BorderSide(
                                                    width: 10,
                                                    color: Colors.white))),
                                        child: Text(
                                            "Hướng dẫn share quyền Google Webmaster Tools",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        side: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 250, 240, 240)))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: ShapeDecoration(
                                          color: Colors.orange,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32.0),
                                              side: BorderSide(
                                                  width: 10,
                                                  color: Colors.orange))),
                                      child: Center(
                                          child: Text(" 3 ",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white))),
                                    ),
                                    Flexible(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(32.0),
                                                side: BorderSide(
                                                    width: 10,
                                                    color: Colors.white))),
                                        child: Text(
                                            "Hướng dẫn kiểm tra bài viết copy",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        side: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 250, 240, 240)))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: ShapeDecoration(
                                          color: Colors.pink,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32.0),
                                              side: BorderSide(
                                                  width: 10,
                                                  color: Colors.pink))),
                                      child: Center(
                                          child: Text(" 4 ",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white))),
                                    ),
                                    Flexible(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(32.0),
                                                side: BorderSide(
                                                    width: 10,
                                                    color: Colors.white))),
                                        child: Text(
                                            "Bài viết chuẩn SEO cho các từ khóa bán hàng",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        side: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 250, 240, 240)))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: ShapeDecoration(
                                          color: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32.0),
                                              side: BorderSide(
                                                  width: 10,
                                                  color: Colors.blue))),
                                      child: Center(
                                          child: Text(" 5 ",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white))),
                                    ),
                                    Flexible(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(32.0),
                                                side: BorderSide(
                                                    width: 10,
                                                    color: Colors.white))),
                                        child: Text(
                                            "bài viết chuẩn SEO cho các từ khóa dịch vụ",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Container(
                                decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                        side: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 250, 240, 240)))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: ShapeDecoration(
                                          color: Colors.green,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32.0),
                                              side: BorderSide(
                                                  width: 10,
                                                  color: Colors.green))),
                                      child: Center(
                                          child: Text(" 6 ",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.white))),
                                    ),
                                    Flexible(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(32.0),
                                                side: BorderSide(
                                                    width: 10,
                                                    color: Colors.white))),
                                        child: Text(
                                            "Hướng dẫn kiểm tra thứ hãng từ khóa trên Rankchecker",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
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

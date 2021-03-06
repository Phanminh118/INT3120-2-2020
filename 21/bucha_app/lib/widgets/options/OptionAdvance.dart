import 'package:flutter/material.dart';

import '../../main.dart';

class Option extends StatelessWidget {
  final String title;
  final int color;


  Option({this.title,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160.0,
        height: 60.0,
        margin: const EdgeInsets.only(top: 20.0,left: 5.0 , right: 5.0),
        child: new RaisedButton(
          onPressed: () {

          },
          child: Container(

            child: Center(
              child: Text(
              title,
              style: TextStyle(
                fontSize: 14.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            ),
          ),
          shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            side:  BorderSide(color: Colors.white,width: 3.0)
          ),
          color: Color(color),
        ));
  }
}

class OptionAdvance extends StatefulWidget {
  @override
  _OptionAdvanceState createState() => _OptionAdvanceState();
}

class _OptionAdvanceState extends State<OptionAdvance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Color(0xff3fe7f1)),
      child: Column(
        children: [
          new Padding(padding: const EdgeInsets.only(top: 150)),
          Container(
            margin: const EdgeInsets.only(
                left: 20.0, right: 20.0),
            height: 60.0,
            decoration: BoxDecoration(
                color: Color(0xffF76C57),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0))),
            child: Container(
              child: Center(
                child: Text(
                  "Lựa Chọn",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                left: 20.0, right: 20.0),
            height: 400.0,
            decoration: BoxDecoration(
                color: Color(0xffA2FB8F),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),
            child: Container(
              margin: const EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 40.0, top: 20.0),
              decoration: BoxDecoration(
                color: Color(0xff0E2D6A),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: new Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Option(
                        title: "500 TỪ VỰNG PHỔ BIẾN",
                        color: 0xffF16A3F,
                      ),
                      Option(
                        title: "600 TỪ VỰNG LUYỆN THI TOEIC",
                        color: 0xff56C9D0,
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Option(
                        title: "900 TỪ VỰNG LUYỆN THI IELTS",
                        color: 0xff3FF146,
                      ),
                      Option(
                        title: "900 TỪ VỰNG LUYỆN THI TOEFL",
                        color: 0xffD41F52,
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Option(
                        title: "1000 TỪ VỰNG LUYỆN THI SAT",
                        color: 0xffFF3C82,
                      ),
                      Option(
                        title: "1000 TỪ VỰNG GIAO TIẾP CƠ BẢN",
                        color: 0xffCFBB24,
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Option(
                        title: "800 TỪ VỰNG GIAO TIẾP TRUNG CẤP",
                        color: 0xff26B1F3,
                      ),
                      Option(
                        title: "600 TỪ VỰNG GIAO TIẾP NÂNG CAO",
                        color: 0xff27AE60,
                      )

                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 50.0,
            height: 50.0,
            margin: const EdgeInsets.only(top: 20.0),
            child: RaisedButton(
              onPressed: () {Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => HomePage()
              ));},
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

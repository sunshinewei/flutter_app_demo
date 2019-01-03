import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          home: MyApp(),
        )
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('标题'),
      ),
      body: TestTextRich(),
    );
  }
}

class TestText extends StatelessWidget {
  Paint mPaint;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    mPaint = new Paint();

    mPaint.color = Colors.yellow;

    return Text(
      'hello world hello world hello world hello world hello world hello world',
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
      locale: Locale.fromSubtags(languageCode: 'und'),
      softWrap: true,
      overflow: TextOverflow.clip,
      textScaleFactor: 1.5,
      maxLines: 5,
      style: TextStyle(
        inherit: false,
        color: Colors.blue,
        fontSize: 20,
        fontWeight: FontWeight.w100,
        fontStyle: FontStyle.italic,
        letterSpacing: 1.0,
        wordSpacing: 20,
        textBaseline: TextBaseline.ideographic,
        height: 1,
        decoration: TextDecoration.lineThrough,
        decorationStyle: TextDecorationStyle.dashed,
        background: mPaint,
      ),
    );
  }
}


class TestTextRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(
      TextSpan(
        text: "hello world",
        children: <TextSpan>[
          TextSpan(
              text: "Hello world",
              style: TextStyle(
                  inherit: true,
                  fontStyle: FontStyle.italic
              )
          ),
          TextSpan(
              text: "hello world",
              style: TextStyle(
                  inherit: false,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  decoration: TextDecoration.underline
              )
          ),
        ],
        style: TextStyle(
          inherit: false,
          fontSize: 100,
          fontStyle: FontStyle.italic,
        ),
        recognizer: new TapGestureRecognizer()
          ..onTap = () {
            print("点击了父TextSpan");
          },
      ),
      softWrap: true,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
    );
  }

}

class TestGestureDetector extends GestureDetector {
}




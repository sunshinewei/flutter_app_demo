import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          home: LoginApp(),
        )
    );

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white70,
        body: new SingleChildScrollView(
          child: new LoginView(),
        )
    );
  }
}

class TestGrideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(16.0),
//      childAspectRatio: 8.0 / 10.0,
      // TODO: Build a grid of cards (102)
      children: <Widget>[Card(
          child: new Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Hello world"),
          )
      )
      ],);
  }

}


//登录界面
class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(55),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Member Login',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('会员登录',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 25,
                    height: 1.5,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),

          SizedBox(height: 120),
          new inputEdtextNameWiget(),
          SizedBox(height: 20,),
          new inputEdtextPassWordWiget(),
          SizedBox(height: 30,),
          new loginButtonWiget(),
        ],
      ),

    );
  }
}

class inputEdtextNameWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      child: new Container(
        padding: EdgeInsets.fromLTRB(20, 2, 8, 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black12,
        ),
        alignment: Alignment.center,
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
            hintText: '用户名',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class inputEdtextPassWordWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      child: new Container(
        padding: EdgeInsets.fromLTRB(20, 2, 8, 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black12,
        ),
        alignment: Alignment.center,
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
            hintText: '密码',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class loginButtonWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      child: new Container(
        padding: EdgeInsets.fromLTRB(2, 15, 2, 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.deepOrangeAccent,
        ),
        alignment: Alignment.center,
        child: Text(
          '登录',
          textAlign: TextAlign.center,
          style: TextStyle(letterSpacing: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white70),
        ),

      ),
    );
  }
}


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
      body: TestContainer(),
    );
  }
}


class TestStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[
        Text(
          "文本控件1.1vv",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.yellow,
          ),
        ),

      ],
    );
  }

}


class TestContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.all(30),
//      color: Colors.green,
      alignment: Alignment(0.1, 0.0),
      width: 250,
      height: 500,
      margin: EdgeInsets.all(20),
      transform: Matrix4.rotationZ(-0.1),
      constraints: BoxConstraints.expand(height: 250.0, width: 500.0),
      foregroundDecoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'http://file06.16sucai.com/2016/0829/37c41d6c1e7af2ece2b3936c0aab86da.jpg'),
          )
      ),
      decoration: new BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Text(
        "hello world",
        style: TextStyle(
            fontSize: 50
        ),
      ),
    );
  }
}


class TestRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: Text(
              "文本控件1.1",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.
                green,
              )
          ),
        ),

        Expanded(
            child: Stack(
              children: <Widget>[
                Text(
                  "文本控件1.1.1",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.
                    green,
                  ),
                ),

                new Opacity(
                  opacity
                      : 0.5,
                  child: new Container(
                    width:
                    200.0,
                    height: 200.0,
                    color: Colors.
                    yellow,
                  ),
                ),

              ],
            )
        )
        ,
        Expanded(
          child: Text(
            "文本控件1.3"
            ,
            textAlign: TextAlign.center,
            style: TextStyle
              (
              fontWeight: FontWeight.bold,
              fontSize: 20
              ,
              fontStyle: FontStyle.italic,
              color: Colors
                  .red,
            ),
          ),
        ),
        Expanded
          (
          child: Text(
            "文本控件1.4",
            textAlign
                : TextAlign.left,
            style: TextStyle(
              fontWeight
                  : FontWeight.bold,
              fontSize: 20,
              fontStyle
                  :
              FontStyle
                  .
              italic
              ,
              color
                  :
              Colors
                  .
              green
              ,
            )
            ,
          )
          ,
        )
        ,
      ]
      ,
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




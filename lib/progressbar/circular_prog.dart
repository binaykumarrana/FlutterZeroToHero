import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleProgressDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: CircleProgressState(
        100.0,
        backgroundColor: Colors.red,
        foreColor: Colors.amberAccent,
        startNumber: 0,
        maxNumber: 100,
        duration: 3000,
        textPercent: false,
      ),
    );
  }
}

class CircleProgressState extends StatefulWidget {
  final Color backgroundColor;
  final Color foreColor;
  final int duration;
  final double size;
  final bool textPercent;
  final double strokeWidth;
  final double startNumber;
  final double maxNumber;
  final TextStyle textStyle;

  const CircleProgressState(
    this.size, {
    this.backgroundColor = Colors.grey,
    this.foreColor = Colors.blueAccent,
    this.duration = 3000,
    this.strokeWidth = 10.0,
    this.textStyle,
    this.startNumber = 0.0,
    this.maxNumber = 360,
    this.textPercent = true,
  });

  @override
  State<StatefulWidget> createState() {
    return _CircleProgressState();
  }
}

class _CircleProgressState extends State<CircleProgressState>
    with SingleTickerProviderStateMixin {
  Animation<double> _doubleAnimation;
  AnimationController _animationController;
  CurvedAnimation curve;
  double _progress = 0;

  void startTimer() {
    new Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) => setState(
        () {
          if (_progress == 1) {
            timer.cancel();
          } else {
            _progress += 0.2;
          }
        },
      ),
    );
  }

  @override
  void reassemble() {
    onAnimationStart();
  }

  onAnimationStart() {
    _animationController.forward(from: widget.startNumber);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.duration));

    curve = new CurvedAnimation(
        parent: _animationController, curve: Curves.decelerate);
    _doubleAnimation =
        new Tween(begin: widget.startNumber, end: widget.maxNumber)
            .animate(curve);

    _animationController.addListener(() {
      setState(() {});
    });
    onAnimationStart();
  }

  @override
  Widget build(BuildContext context) {
    var percent = (_doubleAnimation.value / widget.maxNumber * 100).round();
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: CircularProgressIndicator(
              strokeWidth: 4,
              backgroundColor: Colors.cyanAccent,
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
              value: _progress,
            ),
          ),
          RaisedButton(
            child: Text('Start timer'),
            onPressed: () {
              setState(() {
                _progress = 0;
              });
              startTimer();
            },
          ),
          Container(
              margin: EdgeInsets.all(16.0),
              width: widget.size,
              height: widget.size,
              child: CustomPaint(
                painter: CircleProgressBarPainter(
                    widget.backgroundColor,
                    widget.foreColor,
                    widget.startNumber / widget.maxNumber * 360,
                    _doubleAnimation.value / widget.maxNumber * 360,
                    widget.maxNumber / widget.maxNumber * 360,
                    widget.strokeWidth),
                size: Size(widget.size, widget.size),
                child: Center(
                  child: Text(
                      "${_doubleAnimation.value.round() == widget.maxNumber ? "完成" : "${widget.textPercent ? "$percent%" : "${_doubleAnimation.value.round()}/${widget.maxNumber.round()}"}"}",
                      style: widget.textStyle == null
                          ? TextStyle(color: Colors.black, fontSize: 20)
                          : widget.textStyle),
                ),
              ))
        ],
      ),
    );
  }
}

class CircleProgressBarPainter extends CustomPainter {
  var _paintBckGround;
  var _paintFore;

  final _strokeWidth;
  final _backgroundColor;
  final _foreColor;
  final _startAngle;
  final _sweepAngle;
  final _endAngle;

  CircleProgressBarPainter(this._backgroundColor, this._foreColor,
      this._startAngle, this._sweepAngle, this._endAngle, this._strokeWidth) {
    _paintBckGround = new Paint()
      ..color = _backgroundColor
      ..isAntiAlias = true
      ..strokeCap = StrokeCap.round
      ..strokeWidth = _strokeWidth
      ..style = PaintingStyle.stroke;

    _paintFore = new Paint()
      ..color = _foreColor
      ..isAntiAlias = true
      ..strokeWidth = _strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var radius = size.width > size.height ? size.width / 2 : size.height / 2;
    Rect rect = Rect.fromCircle(center: Offset(radius, radius), radius: radius);

    canvas.drawCircle(Offset(radius, radius), radius, _paintBckGround);
    canvas.drawArc(rect, _startAngle / 180 * 3.14, _sweepAngle / 180 * 3.14,
        false, _paintFore);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return _sweepAngle != _endAngle;
  }
}

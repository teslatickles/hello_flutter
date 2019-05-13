import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vector_math/vector_math_64.dart' hide Colors;
import 'dart:math';

class RadialMenu extends StatefulWidget {
  createState() => _RadialMenuState();
}

class _RadialMenuState extends State<RadialMenu>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 900), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return RadialAnimation(controller: controller);
  }
}

class RadialAnimation extends StatelessWidget {
  RadialAnimation({Key key, this.controller})
      : scale = Tween<double>(
          begin: 1.5,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Curves.fastOutSlowIn,
          ),
        ),
        translation = Tween<double>(
          begin: 0.0,
          end: 100.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Curves.easeOut,
          ),
        ),
        rotation = Tween<double>(
          begin: 0.0,
          end: 360.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.0,
              0.7,
            ),
          ),
        ),
        super(key: key);

  final AnimationController controller;
  final Animation<double> scale;
  final Animation<double> translation;
  final Animation<double> rotation;

  build(context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, builder) {
          return Transform.rotate(
            angle: radians(rotation.value),
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildButton(0,
                    color: Colors.red,
                    icon: FontAwesomeIcons.docker,
                    action: _close),
                _buildButton(45,
                    color: Colors.blue, icon: FontAwesomeIcons.linux),
                _buildButton(90,
                    color: Colors.yellow, icon: FontAwesomeIcons.playstation),
                _buildButton(135,
                    color: Colors.green, icon: FontAwesomeIcons.apple),
                _buildButton(180,
                    color: Colors.orange, icon: FontAwesomeIcons.microsoft),
                _buildButton(225,
                    color: Colors.black, icon: FontAwesomeIcons.raspberryPi),
                _buildButton(
                  270,
                  color: Colors.indigo,
                  icon: FontAwesomeIcons.githubAlt,
                ),
                _buildButton(315,
                    color: Colors.pink, icon: FontAwesomeIcons.fontAwesome),
                Transform.scale(
                  scale: scale.value - 1.5,
                  child: FloatingActionButton(
                    heroTag: null,
                    child: Icon(FontAwesomeIcons.timesCircle),
                    onPressed: _close,
                    backgroundColor: Colors.red,
                  ),
                ),
                Transform.scale(
                  scale: scale.value,
                  child: FloatingActionButton(
                    heroTag: null,
                    child: Icon(FontAwesomeIcons.solidDotCircle),
                    onPressed: _open,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
          );
        });
  }

  _buildButton(double angle, {Color color, IconData icon, action}) {
    final double rad = radians(angle);

    return Transform(
      transform: Matrix4.identity()
        ..translate(
          (translation.value) * cos(rad),
          (translation.value) * sin(rad),
        ),
      child: FloatingActionButton(
        heroTag: null,
        child: Icon(icon),
        backgroundColor: color,
        onPressed: action,
      ),
    );
  }

  _open() {
    controller.forward();
  }

  _close() {
    controller.reverse();
  }

  // _goToPageOne(context) {
  //   print(context);
  //   // Navigator.of(context)
  //   //     .push(MaterialPageRoute(builder: (_) => FirstScreen()));
  // }
}

class GetColor {
  static setBackground(color) {
    var backgroundColor = color;
    return backgroundColor;
  }
}

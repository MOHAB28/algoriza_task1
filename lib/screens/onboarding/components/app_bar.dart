import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class OnBoardingViewAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const OnBoardingViewAppBar({
    Key? key,
    required Widget child,
    Color backgroundColor = const Color(0xffffffff),
    double elevation = 0.0,
    double preferredSize = 100.0,
    AlignmentGeometry alignment = Alignment.centerRight,
  })  : _backgroundColor = backgroundColor,
        _elevation = elevation,
        _preferredSize = preferredSize,
        _alignment = alignment,
        _child = child,
        super(key: key);
  final Color _backgroundColor;
  final double _elevation;
  final double _preferredSize;
  final AlignmentGeometry _alignment;
  final Widget _child;
  @override
  Size get preferredSize => Size.fromHeight(_preferredSize);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: _backgroundColor,
      elevation: _elevation,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(_preferredSize),
        child: Align(
          alignment: _alignment,
          child: _child,
        ),
      ),
    );
  }
}

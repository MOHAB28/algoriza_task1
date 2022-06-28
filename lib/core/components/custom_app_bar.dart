import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    double height = 60.0,
    double buttonSize = 40.0,
    bool showLeading = false,
    Color iconBackgroundColor = Colors.white,
    Color buttonBackgroundColor = Colors.black54,
    VoidCallback? leadingOnPressed,
  })  : _showLeading = showLeading,
        _height = height,
        _buttonSize = buttonSize,
        _iconBackgroundColor = iconBackgroundColor,
        _buttonBackgroundColor = buttonBackgroundColor,
        _leadingOnPressed = leadingOnPressed,
        super(key: key);

  final bool _showLeading;
  final double _height;
  final double _buttonSize;
  final Color _iconBackgroundColor;
  final Color _buttonBackgroundColor;
  final VoidCallback? _leadingOnPressed;
  @override
  Size get preferredSize => Size.fromHeight(_height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: _showLeading
          ? InkWell(
              onTap: _showLeading
                  ? () {
                      _leadingOnPressed!();
                    }
                  : null,
              child: Container(
                margin: const EdgeInsets.only(left: 20.0),
                height: _buttonSize,
                width: _buttonSize,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _buttonBackgroundColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: _iconBackgroundColor,
                    size: 15,
                  ),
                ),
              ),
            )
          : null,
      toolbarHeight: _height,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }
}

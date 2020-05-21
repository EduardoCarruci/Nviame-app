import 'package:flutter/material.dart';

class ProviderInfo with ChangeNotifier {
  bool _isMenuOpen = false;

  String _textIcon = "assets/menu.svg";

  bool _escalones = false;

  Color _colorappbar = Colors.white;


  get textIcon {
    return _textIcon;
  }

  set textIcon(String texto) {
    this._textIcon = texto;
    notifyListeners();
  }

    get colorappbar {
    return _colorappbar;
  }

  set colorappbar(Color texto) {
    this._colorappbar = texto;
    notifyListeners();
  }

  get isMenuOpen {
    return _isMenuOpen;
  }

  set isMenuOpen(bool bandera) {
    this._isMenuOpen = bandera;

    notifyListeners();
  }


    get escalones {
    return _escalones;
  }

  set escalones(bool bandera) {
    this._escalones = bandera;

    notifyListeners();
  }
}

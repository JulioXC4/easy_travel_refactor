import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatefulWidget {
  const PasswordFieldWidget({super.key});

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: 'Password',
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isHidden = !_isHidden;
            });
          },
          icon: Icon(_isHidden ? Icons.visibility_off : Icons.visibility),
        ),
      ),
      obscureText: _isHidden,
    );
  }
}

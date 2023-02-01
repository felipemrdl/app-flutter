import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputTextfield extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatters;

  const InputTextfield({
      super.key,
      required this.icon,
      required this.label,
      this.isSecret = false,
      this.inputFormatters
      });

  @override
  State<InputTextfield> createState() => _InputTextfieldState();
}

class _InputTextfieldState extends State<InputTextfield> {

  bool isObscuro = false;

  @override
  void initState() {
    super.initState();

    isObscuro = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        inputFormatters: widget.inputFormatters,
        obscureText: isObscuro,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            labelText: widget.label,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            isDense: true,
            suffixIcon: widget.isSecret
             ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscuro = !isObscuro;
                  });
                },
                icon: Icon(isObscuro ? Icons.visibility : Icons.visibility_off)
            )
          : null
        ),
      ),
    );
  }
}

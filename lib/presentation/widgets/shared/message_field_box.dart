import 'package:flutter/material.dart';


class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});


  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(onPressed: (){ print('Valor de la caja de texto'); }, icon: Icon(Icons.send)),
      );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
          print('Valor del input: $value');
      },
      onChanged: (value) {
        print('Changed: $value');
      },
    );
  }
}
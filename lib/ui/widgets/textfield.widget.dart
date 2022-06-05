import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    super.key,
    required this.fieldBloc,
    required this.label,
    required this.prefixIcon,
    this.isOptional = false,
    this.keyboardType,
  });

  final TextFieldBloc fieldBloc;
  final String label;
  final IconData prefixIcon;
  final TextInputType? keyboardType;
  final bool isOptional;

  @override
  Widget build(BuildContext context) {
    return TextFieldBlocBuilder(
      textFieldBloc: fieldBloc,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefixIcon),
        // suffixText: 'Optional',
        suffixIconConstraints: isOptional
            ? const BoxConstraints(
                minWidth: 50,
                minHeight: 20,
              )
            : null,
        suffixIcon: isOptional
            ? Text(
                'Optional     ',
                style: Theme.of(context).textTheme.caption,
              )
            : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}

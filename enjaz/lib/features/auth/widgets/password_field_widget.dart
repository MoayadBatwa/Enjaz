import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';

class PasswordFieldWidget extends HookWidget {
  const PasswordFieldWidget({
    super.key,
    this.controller,
    this.title,
    this.validator,
  });

  final String? title;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final obscure = useState(true);

    return SizedBox(
      height: 9.sh,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscure.value,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          labelText: title,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              obscure.value = !obscure.value;
            },
            icon: Icon(
              obscure.value ? Icons.visibility_off : Icons.visibility,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ),
        onTapOutside: (_) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }
}

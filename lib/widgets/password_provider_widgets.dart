import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vagaro/providers/password_provider.dart';

class PasswordProviderWidget extends StatelessWidget {
  final TextEditingController passwordController;
  final PasswordProvider passwordProvider;

  const PasswordProviderWidget({
    super.key,
    required this.passwordController,
    required this.passwordProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordProvider>(
      builder: ((context, pp, child) => TextFormField(
            obscureText: pp.isObscure,
            controller: passwordController,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: 'Enter password',
              label: Text('Passowrd',
                  style: TextStyle(fontSize: 15.sp, color: Colors.black)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              prefixIcon: const Icon(Icons.vpn_key,
                  color: Color.fromARGB(255, 185, 58, 11)),
              suffixIcon: IconButton(
                onPressed: () => passwordProvider.isToggleObscure(),
                icon: Icon(
                  pp.isObscure ? Icons.visibility_off : Icons.visibility,
                ),
                color: pp.isObscure
                    ? const Color.fromARGB(255, 185, 58, 11)
                    : const Color.fromARGB(255, 57, 56, 56),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter passoword';
              } else if (value.length < 7) {
                return 'required eight digit passoword';
              } else if (value.length > 12) {
                return 'Please enter only twelve digit passoword';
              }
              return null;
            },
          )),
    );
  }
}

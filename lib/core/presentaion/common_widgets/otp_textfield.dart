import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/methods/build_border.dart';

class OtpTextFormField extends StatelessWidget {
  const OtpTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 54,
      height: 54,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: Colors.white,
            ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          fillColor: textFieldColor,
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }
}

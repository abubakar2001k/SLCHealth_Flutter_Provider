import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CusttomTextField extends StatelessWidget {
  final String? textLabel;
  final Widget? sufixicon;
  final bool? isObscure;
  final  TextInputType? keybordType;
  final String? Function(String?)? validater;
  final TextEditingController? controller;
  final TextStyle? style;
  const CusttomTextField({super.key, this.controller,
    this.sufixicon, this.textLabel, this.isObscure, this.validater, this.keybordType, this.style });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height:  MediaQuery.of(context).size.height * .07,
        width: MediaQuery.of(context).size.width * .9,

        child: TextFormField(
          keyboardType: keybordType,
          controller: controller,
          obscureText: isObscure ?? false,
          decoration:InputDecoration(
              labelText: textLabel ,
            // obscureText : isObscure ?? false;



              suffixIcon: sufixicon,
              // border: const OutlineInputBorder(
              //     borderRadius: BorderRadius.horizontal(),
              //     borderSide: BorderSide(
              //       color: Colors.black,
              //     )
              // )
          ),
        ),
      ),
    );
  }
}

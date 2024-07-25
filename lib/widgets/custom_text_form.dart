import 'package:day_task_iti/consts/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.formName,
    required this.hintText,
    required this.prefixIcon,
    this.isObsecure,
  });

  final String? formName;
  final String hintText;
  final Widget prefixIcon;
  final bool? isObsecure;

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _isObsecure;

  @override
  void initState() {
    super.initState();
    _isObsecure = widget.isObsecure ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.formName != null) // Show form name only if it's provided
          Text(
            widget.formName!,
            style: const TextStyle(
                fontSize: 14, color: kTextColor, fontFamily: 'Inter-Regular'),
          ),
        if (widget.formName != null) // Add space only if form name is provided
          const SizedBox(
            height: 8,
          ),
        SizedBox(
          height: 45,
          child: TextFormField(
            obscureText: _isObsecure,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.isObsecure == true
                  ? IconButton(
                      icon: Icon(
                        _isObsecure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObsecure = !_isObsecure;
                        });
                      },
                    )
                  : null,
              filled: true,
              fillColor: kFormsColor,
              hintText: widget.hintText,
              hintStyle: const TextStyle(color: Colors.white54, fontSize: 14),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.zero,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap:onTap ,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff7BB3FF),
        ),
        child: Center(
          child: Text("SUBMIT",style: Styles.textStyle18Bold(context),),
        ),
      ),
    );
  }
}

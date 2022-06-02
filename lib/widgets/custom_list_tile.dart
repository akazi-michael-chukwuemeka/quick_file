import 'package:flutter/material.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/widget.dart';

class CustomListTile extends StatelessWidget {
  final String? title, btnTitle;
  final Function()? onTap;
  CustomListTile({Key? key, this.title, this.btnTitle, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration:
          BoxDecoration(border: Border.all(color: primaryColor, width: 1)),
      child: ListTile(
        title: SizedBox(child: CustomText(text: title)),
        trailing: CustomButton(
          buttonColor: primaryColor,
          borderColor: primaryColor,
          titleColor: white,
          title: btnTitle,
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
        ),
      ),
    );
  }
}

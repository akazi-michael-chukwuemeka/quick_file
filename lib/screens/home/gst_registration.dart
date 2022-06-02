import 'package:flutter/material.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/custom_close_button.dart';
import 'package:quick_file/widgets/custom_list_tile.dart';
import 'package:quick_file/widgets/custom_text.dart';

class GstRegistration extends StatelessWidget {
  const GstRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: const CustomCloseButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding * 2, vertical: defaultPadding),
        child: Column(
          children: [
            const CustomText(
              text: 'Choose Your Plan',
              size: 23,
            ),
            const SizedBox(height: defaultPadding * 3),
            CustomListTile(
                title: 'STANDARD Rs. 1199: Apply online GST registration',
                btnTitle: 'Choose this',
                onTap: () => appController
                    .launchInAppWebView(Uri.parse(gstResgistration))),
          ],
        ),
      ),
    );
  }
}

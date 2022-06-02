import 'package:flutter/material.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/custom_close_button.dart';
import 'package:quick_file/widgets/custom_list_tile.dart';
import 'package:quick_file/widgets/custom_text.dart';

class GstReturnAboveFive extends StatelessWidget {
  const GstReturnAboveFive({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
        child: Column(
          children: [
            const CustomText(text: 'Choose Your Plan', size: 20),
            const SizedBox(height: defaultPadding),
            const CustomText(
              text: 'For annual turnover Above Rs.5 crores',
              size: 18,
            ),
            const SizedBox(height: defaultPadding * 3),
            CustomListTile(
                title: 'BASIC Rs. 4000: GSTR-3B & GSTR-1 for 1 3 months',
                btnTitle: 'Start now',
                onTap: () =>
                    appController.launchInAppWebView(Uri.parse(above5Basic))),
            const SizedBox(height: defaultPadding * 2),
            CustomListTile(
                title: 'STANDARD Rs. 8000: GSTR-3B & GSTR-1 for 6 months',
                btnTitle: 'Start now',
                onTap: () => appController
                    .launchInAppWebView(Uri.parse(above5Standard))),
            const SizedBox(height: defaultPadding * 2),
            CustomListTile(
                title: 'PREMIUM Rs. 15000: GSTR-3B & GSTR-1 for 1 year',
                btnTitle: 'Start now',
                onTap: () =>
                    appController.launchInAppWebView(Uri.parse(above5Premium))),
          ],
        ),
      ),
    );
  }
}

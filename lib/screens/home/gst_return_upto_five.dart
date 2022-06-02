import 'package:flutter/material.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/custom_close_button.dart';
import 'package:quick_file/widgets/custom_list_tile.dart';
import 'package:quick_file/widgets/custom_text.dart';

class GstReturnUptoFive extends StatelessWidget {
  const GstReturnUptoFive({Key? key}) : super(key: key);

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
              text: 'For annual turnover up to Rs.5 crores',
              size: 18,
            ),
            const SizedBox(height: defaultPadding * 3),
            CustomListTile(
                title: 'BASIC Rs. 2500: GSTR-3B & GSTR-1 Quarterly',
                btnTitle: 'Choose this',
                onTap: () =>
                    appController.launchInAppWebView(Uri.parse(upto5Basic))),
            const SizedBox(height: defaultPadding * 2),
            CustomListTile(
                title: 'STANDARD Rs. 5000: GSTR-3B & GSTR-1 Half yearly',
                btnTitle: 'Choose this',
                onTap: () =>
                    appController.launchInAppWebView(Uri.parse(upto5Standard))),
            const SizedBox(height: defaultPadding * 2),
            CustomListTile(
                title: 'PREMIUM Rs. 10000: GSTR-3B & GSTR-1 Yearly',
                btnTitle: 'Choose this',
                onTap: () =>
                    appController.launchInAppWebView(Uri.parse(upto5Premium))),
          ],
        ),
      ),
    );
  }
}

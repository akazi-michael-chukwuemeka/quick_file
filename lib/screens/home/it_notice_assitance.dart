import 'package:flutter/material.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/custom_list_tile.dart';
import 'package:quick_file/widgets/widget.dart';

class ItNoticeAssitance extends StatelessWidget {
  const ItNoticeAssitance({Key? key}) : super(key: key);

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
            const SizedBox(height: defaultPadding * 3),
            CustomListTile(
                title: 'Defective Return:Rs 499',
                btnTitle: 'Choose this',
                onTap: () => appController
                    .launchInAppWebView(Uri.parse(itNoticeAssitance))),
            const SizedBox(height: defaultPadding * 2),
            CustomListTile(
                title: 'Demand u/s143(1): Rs 499',
                btnTitle: 'Choose this',
                onTap: () => appController
                    .launchInAppWebView(Uri.parse(itNoticeAssitance))),
            const SizedBox(height: defaultPadding * 2),
            CustomListTile(
                title: 'Rectification u/s154: Rs 499',
                btnTitle: 'Choose this',
                onTap: () => appController
                    .launchInAppWebView(Uri.parse(itNoticeAssitance))),
          ],
        ),
      ),
    );
  }
}

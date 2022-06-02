import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/widget.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);
  final phoneNumber = '+91 8955833830';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        centerTitle: true,
        title: const CustomText(text: 'Contact us', size: 23),
        leading: const CustomCloseButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customContactButton(
                  title: 'Call',
                  buttonTitle: 'Call Now',
                  icon: Icons.call,
                  onTap: () => appController.makePhoneCall(phoneNumber)),
              const SizedBox(height: defaultPadding * 4),
              customContactButton(
                  title: 'Email',
                  buttonTitle: 'Send Mail',
                  icon: Icons.email,
                  onTap: () => appController
                      .sendEmail('onlineindiataxfilings@gmail.com')),
              const SizedBox(height: defaultPadding * 4),
              customContactButton(
                title: 'Whatsapp',
                buttonTitle: 'Send Chat',
                icon: FontAwesomeIcons.whatsapp,
                onTap: () async {
                  var whatsappUrl =
                      "https://api.whatsapp.com/send?phone=$phoneNumber";
                  appController.launchInBrowser(Uri.parse(whatsappUrl));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customContactButton(
      {String? title, buttonTitle, IconData? icon, Function()? onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 100, child: CustomText(text: title)),
        const SizedBox(width: defaultPadding / 2),
        InkWell(
          onTap: onTap,
          child: Container(
            height: 60,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: white,
                border: Border.all(color: primaryColor, width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: primaryColor, size: 23),
                const SizedBox(width: defaultPadding / 2),
                CustomText(text: buttonTitle, color: primaryColor),
              ],
            ),
          ),
        )
      ],
    );
  }
}

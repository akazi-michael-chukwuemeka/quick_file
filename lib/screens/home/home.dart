import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:quick_file/screens/home/contact_us.dart';
import 'package:quick_file/screens/home/gst_service.dart';
import 'package:quick_file/screens/home/it_notice_assitance.dart';
import 'package:quick_file/utils/utils.dart';
import 'package:quick_file/widgets/avatar.dart';
import '../../widgets/custom_text.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color.fromARGB(255, 233, 231, 231),
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: white,
        //   centerTitle: true,
        //   iconTheme: const IconThemeData(color: black),
        // ),
        drawer: drawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: defaultPadding + 6,
                  right: defaultPadding + 6,
                  top: defaultPadding * 4),
              child: Row(
                children: [
                  logoAndWelcomeText(),
                  Expanded(child: Container()),
                  InkWell(
                      onTap: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        size: 40,
                      ))
                ],
              ),
            ),
            const SizedBox(height: defaultPadding * 2),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding + 6),
              child: itrFilingsContainer(),
            ),
            const SizedBox(height: defaultPadding * 2),
            Container(
              // height: Get.height,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.grey.withOpacity(0.4), width: 4),
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14))),
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding + 2, vertical: defaultPadding + 2),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: 'Quick Service',
                        color: black,
                        size: 14,
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      Expanded(
                        child: customCard(
                            title: 'Contact Us\n',
                            icon: FontAwesomeIcons.arrowRightArrowLeft,
                            onTap: () => Get.to(const ContactUs())),
                      ),
                      Expanded(
                        child: customCard(
                            title: 'Consult an Expert',
                            icon: FontAwesomeIcons.shuffle,
                            onTap: () => appController.launchInAppWebView(Uri.parse(
                                'https://onlineindiataxfilings.net/tax-consultant-services'))),
                      ),
                      Expanded(
                        child: customCard(
                            title: 'Register GST',
                            icon: FontAwesomeIcons.buildingColumns,
                            onTap: () => Get.to(const GstServices())),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      CustomText(
                        text: 'Other Service',
                        color: black,
                        size: 14,
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Container(
                    height: Get.height * 0.395,
                    child: ListView(
                      children: [
                        const SizedBox(height: 8),
                        otherServicesCard(
                            title: 'IT Notice Assitance',
                            subTitle: 'Click to proceed',
                            icon: FontAwesomeIcons.info,
                            onTap: () => Get.to(const ItNoticeAssitance())),
                        const SizedBox(height: 8),
                        otherServicesCard(
                            title: 'Expert Consultation',
                            subTitle: 'Do you need an expert?',
                            icon: FontAwesomeIcons.info,
                            onTap: () => appController.launchInAppWebView(Uri.parse(
                                'https://onlineindiataxfilings.net/tax-consultant-services'))),
                        const SizedBox(height: 8),
                        otherServicesCard(
                            title: 'Visit Website',
                            subTitle: 'Check website for more details',
                            icon: FontAwesomeIcons.globe,
                            onTap: () => appController.launchInBrowser(
                                Uri.parse(
                                    'https://onlineindiataxfilings.net'))),
                        const SizedBox(height: 8),
                        otherServicesCard(
                            title: 'Kytes',
                            subTitle: 'Click to proceed',
                            icon: FontAwesomeIcons.k,
                            onTap: () => appController.launchInAppWebView(Uri.parse(
                                'https://onlineindiataxfilings.net/articles'))),
                        const SizedBox(height: 8),
                        otherServicesCard(
                            title: 'Refer',
                            subTitle: 'Get 20% off from refer & earn',
                            icon: FontAwesomeIcons.share,
                            onTap: () => appController.launchInAppWebView(Uri.parse(
                                'https://onlineindiataxfilings.net/articles'))),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget itrFilingsContainer() {
    return InkWell(
      onTap: () => appController.launchInAppWebView(Uri.parse(taxFilingUrl)),
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.all(defaultPadding * 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.deepOrangeAccent.withOpacity(0.8),
                Color.fromARGB(255, 92, 7, 237),
              ],
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Most Popular',
              color: white,
            ),
            const SizedBox(height: defaultPadding * 2),
            CustomText(
              text: 'ITR Filings',
              size: 28,
              weight: FontWeight.bold,
              color: white,
            ),
            const SizedBox(height: defaultPadding * 2),
            CustomText(
              text: 'Last Date -  31st July 2022',
              color: white,
            ),
          ],
        ),
      ),
    );
  }

  Widget logoAndWelcomeText() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          child: ClipOval(
            child: Image.asset('assets/logo.jpg', fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: defaultPadding * 2),
        Column(
          children: [
            Row(
              children: [
                CustomText(
                  text: 'Welcome to ',
                  weight: FontWeight.bold,
                  size: 20,
                ),
                CustomText(
                  text: 'Quick File',
                  weight: FontWeight.bold,
                  color: Colors.deepPurple,
                  size: 21,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'choose from different services ',
                  size: 15,
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget drawer() {
    return Drawer(
        child: Container(
      color: white,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: white),
            currentAccountPicture: Obx(
              () => (CircleAvatar(
                backgroundColor: black,
                child: Avatar(
                  authController.firebaseUser.value!.photoURL!,
                ),
              )),
            ),
            accountName: Obx(
              () => CustomText(
                  text: authController.firebaseUser.value!.displayName ??
                      'Loading username...',
                  size: 16,
                  weight: FontWeight.w500),
            ),
            accountEmail: Obx(
              () => CustomText(
                  text: authController.firebaseUser.value!.email ??
                      'Loading email...',
                  size: 14,
                  weight: FontWeight.w300),
            ),
          ),
          const Divider(color: lightBlack, height: 0.1, thickness: 1),
          customListTile(
              leadingIcon: (Icons.exit_to_app),
              title: "Log out",
              onTap: () => authController.signOut()),
        ],
      ),
    ));
  }

  Widget customCard({IconData? icon, String? title, Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Card(
          elevation: 3,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(6)),
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding * 2),
              child: Column(
                children: [
                  Icon(
                    icon,
                    color: Colors.grey.withOpacity(0.8),
                    size: 33,
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  CustomText(
                      text: title,
                      textAlign: TextAlign.center,
                      size: 13,
                      color: black,
                      weight: FontWeight.w500),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget otherServicesCard(
      {String? title, subTitle, IconData? icon, Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.deepPurple,
            child: Icon(
              icon,
              size: 16,
              color: white,
            ),
          ),
          title: CustomText(
            text: title,
            size: 16,
            weight: FontWeight.w500,
          ),
          subtitle: subTitle.toString().isNotEmpty
              ? CustomText(
                  text: subTitle,
                  size: 14,
                  weight: FontWeight.w300,
                )
              : SizedBox.shrink(),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }

  Widget customListTile(
      {IconData? leadingIcon, String? title, Function()? onTap}) {
    return ListTile(
        leading: Icon(leadingIcon, color: black.withOpacity(0.7)),
        title: CustomText(
          text: title,
          color: black,
          weight: FontWeight.normal,
        ),
        onTap: onTap);
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter_svg/flutter_svg.dart';
import 'package:tremortech/util/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/view/widgets/textinput_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).hintColor.withOpacity(
            0.25,
          ),
      body: SafeArea(
        child: SizedBox(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(
                      Dimensions.paddingSizeDefault,
                    ),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get in Touch",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeExtraSmall,
                          ),
                          Text(
                            "Always within your reach",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).hintColor.withOpacity(0.1),
                  thickness: Dimensions.paddingSizeDefault,
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(
                      Dimensions.paddingSizeDefault,
                    ),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Dimensions.paddingSizeExtraSmall,
                          ),
                          Text(
                            "Subject",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeExtraSmall,
                          ),
                          SizedBox(
                            height: 50,
                            child: CustomTextField(
                              borderRadius: Dimensions.radiusDefault,
                              hintText: 'Write subject here',
                              controller: TextEditingController(),
                              focussedBorderColor:
                                  Theme.of(context).primaryColor,
                              fillColor: Colors.transparent,
                              inputType: TextInputType.emailAddress,
                              borderColor:
                                  Theme.of(context).hintColor.withOpacity(
                                        0.5,
                                      ),
                              borderWidth: 1,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeDefault,
                          ),
                          Text(
                            "Message",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeExtraSmall,
                          ),
                          SizedBox(
                            height: 100,
                            child: CustomTextField(
                              maxLines: 3,
                              borderRadius: Dimensions.radiusDefault,
                              hintText: 'Start writing',
                              controller: TextEditingController(),
                              fillColor: Colors.transparent,
                              focussedBorderColor:
                                  Theme.of(context).primaryColor,
                              inputType: TextInputType.emailAddress,
                              borderColor:
                                  Theme.of(context).hintColor.withOpacity(
                                        0.5,
                                      ),
                              borderWidth: 1,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeLarge,
                          ),
                          SizedBox(
                            width: Get.width * 0.95,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Theme.of(context).primaryColor,
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      Dimensions.radiusExtraLarge,
                                    ),
                                  ),
                                ),
                                shadowColor: Theme.of(context).primaryColor,
                              ),
                              onPressed: () async {
                                // Share.share(
                                //     'https://wa.me/+263774259097?text=I',
                                //     subject: 'Look what I made!');
                              },
                              child: Text(
                                'Send',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  thickness: Dimensions.paddingSizeDefault,
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(
                      Dimensions.paddingSizeDefault,
                    ),
                    child: SizedBox(
                      width: Get.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Theme.of(context)
                                      .hintColor
                                      .withOpacity(0.25),
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.paddingSizeSmall,
                              ),
                              Text(
                                'Contact via',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              SizedBox(
                                width: Dimensions.paddingSizeSmall,
                              ),
                              Expanded(
                                child: Divider(
                                  color:
                                      Theme.of(context).hintColor.withOpacity(
                                            0.25,
                                          ),
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeExtraLarge,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  String url = "tel:+263774259097";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: SvgPicture.asset(
                                  Images.call,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.paddingSizeExtraLarge,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  String url =
                                      "https://t.me/share/url?url=Your%20Message%20Here&text=I'm%20interested%20in%20your%20car%20for%20sale";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: SvgPicture.asset(
                                  Images.telegram,
                                  height: 40,
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.paddingSizeExtraLarge,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  String url =
                                      "https://wa.me/+263774259097?text=I'm%20interested%20in%20your%20car%20for%20sale";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: SvgPicture.asset(
                                  Images.whatsapp,
                                  height: 35,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Dimensions.paddingSizeExtraLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  thickness: Dimensions.paddingSizeDefault,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

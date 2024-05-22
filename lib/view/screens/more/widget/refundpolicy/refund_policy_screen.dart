
import 'package:tremortech/util/dimensiona.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyRefundPolicyScreen extends StatefulWidget {
  const MyRefundPolicyScreen({super.key});

  @override
  State<MyRefundPolicyScreen> createState() => _MyRefundPolicyScreenState();
}

class _MyRefundPolicyScreenState extends State<MyRefundPolicyScreen>
 {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.1,
            padding: EdgeInsets.only(
                left: Dimensions.paddingSizeDefault,
                right: Dimensions.paddingSizeDefault,
                top: Dimensions.paddingSizeExtraLarge),
            width: Get.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 24,
                      ),
                    ),
                    const SizedBox(
                      width: Dimensions.defaultSpacing,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Refund Policy",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                  color: Colors.black,
                                  fontSize: Dimensions.fontSizeExtraLarge,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: Dimensions.defaultSpacing,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          'Zimbabwe Women\'s Microfinance Bank Mobile Banking App Privacy Policy\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeExtraLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          '1. Information We Collect\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'We may collect the following types of information when you use our Mobile Banking App:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\na. Personal Information:\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'Full name\nDate of birth\nGender\nContact information (email address, phone number, address)\nIdentification details (passport, national ID, etc.)',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\nb. Financial Information:\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'Account details\nTransaction history\nAccount balances\nPayment details\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '2. How We Use Your Information\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'We use your personal information for the following purposes:\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\na. Provide and Improve Services:\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'Process transactions and provide banking services\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          'Customize and enhance your experience with the App\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\nb. Security and Fraud Prevention:\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'Detect and prevent fraud and unauthorized access\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          'Ensure the security and integrity of our services\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\nc. Communication:\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'Send important updates, notifications, and account information\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          'Respond to your inquiries and requests\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),

                                    TextSpan(
                                      text:
                                          '\n\nd. Legal Compliance:\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'Comply with applicable laws, regulations, and legal processes\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\n3. Information Sharing\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'We do not sell or rent your personal information to third parties. However, we may share your information with:\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\na. Service Providers:\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'Third-party service providers that help us deliver and improve our services\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\nb. Legal Requirements:\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'To comply with legal obligations, court orders, or government requests\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\nc. Business Transactions:\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'In the event of a merger, acquisition, or sale of assets, your information may be transferred as part of the transaction\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\n4. Your Choices\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'You can manage your privacy preferences within the App settings. You may choose to opt-out of certain communications or request the deletion of your account.\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\n5. Security Measures\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'We implement industry-standard security measures to protect your personal information from unauthorized access, disclosure, alteration, and destruction.\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\n6. Children\'s Privacy\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'The App is not intended for use by individuals under the age of 13. We do not knowingly collect personal information from children.\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\n7. Updates to Privacy Policy\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'We may update this Privacy Policy from time to time to reflect changes in our practices or for legal reasons. We will notify you of any significant changes through the App or other communication channels.\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\n8. Contact Information\n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeLarge,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          'If you have questions or concerns about this Privacy Policy, please contact us at ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          'ict@flickapay.co.zw \n\n',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Theme.of(context).primaryColor,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n\nBy using the Zimbabwe Women\'s Microfinance Bank Mobile Banking App, you agree to the terms outlined in this Privacy Policy. ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                              color: Colors.black,
                                              fontSize: Dimensions
                                                  .fontSizeDefault,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Dimensions.defaultSpacing,
          ),
          const SizedBox(
            height: Dimensions.defaultSpacing,
          ),
        ],
      ),
    );
  }
}

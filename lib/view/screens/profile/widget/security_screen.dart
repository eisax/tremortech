
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/view/widgets/custom_switch.dart';
import 'package:tremortech/view/widgets/rounded_button.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  final TextEditingController amountController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  bool faceId = false;
  bool biometricId = false;
  bool rememberMe = false;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

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
                      child: Icon(
                        Icons.arrow_back,
                        size: 24,
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.defaultSpacing,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Security",
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
                            Padding(
                              padding:
                                  EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Remember me",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: rememberMe,
                                    onChanged: (value) {
                                      setState(() {
                                        rememberMe = value;
                                      });
                                    },
                                    activeColor: Theme.of(context).primaryColor,
                                    backgroundColor:
                                        Theme.of(context).disabledColor,
                                    width: 40.0,
                                    height: 25.0,
                                    padding: EdgeInsets.all(
                                        Dimensions.paddingSizeExtraSmall),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Face ID",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: faceId,
                                    onChanged: (value) {
                                      setState(() {
                                        faceId = value;
                                      });
                                    },
                                    activeColor: Theme.of(context).primaryColor,
                                    backgroundColor:
                                        Theme.of(context).disabledColor,
                                    width: 40.0,
                                    height: 25.0,
                                    padding: EdgeInsets.all(
                                        Dimensions.paddingSizeExtraSmall),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Biometric ID",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize:
                                                Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: biometricId,
                                    onChanged: (value) {
                                      setState(() {
                                        biometricId = value;
                                      });
                                    },
                                    activeColor: Theme.of(context).primaryColor,
                                    backgroundColor:
                                        Theme.of(context).disabledColor,
                                    width: 40.0,
                                    height: 25.0,
                                    padding: EdgeInsets.all(
                                        Dimensions.paddingSizeExtraSmall),
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
                            Center(
                              child: CustomElevatedButton(
                                width: Get.width * 0.9,
                                height: 50.0,
                                text: 'Change Password',
                                backgroundColor: Theme.of(context).primaryColor.withOpacity(0.25),
                                borderRadius: 100,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                        fontSize: Dimensions.fontSizeDefault,
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold),
                                borderWidth: 1,
                                elavation: 0,
                                borderColor: Colors.transparent,
                                onPressed: () {},
                              ),
                            ),
                            const SizedBox(
                              height: Dimensions.defaultSpacing,
                            ),
                            Center(
                              child: CustomElevatedButton(
                                width: Get.width * 0.9,
                                height: 50.0,
                                text: 'Change Pin',
                                backgroundColor: Theme.of(context).primaryColor.withOpacity(0.25),
                                borderRadius: 100,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                        fontSize: Dimensions.fontSizeDefault,
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold),
                                borderWidth: 1,
                                elavation: 0,
                                borderColor: Colors.transparent,
                                onPressed: () {},
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
        ],
      ),
    );
  }
}

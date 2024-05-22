
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/view/widgets/custom_switch.dart';
import 'package:tremortech/view/widgets/rounded_button.dart';

class ChangeNotificationScreen extends StatefulWidget {
  const ChangeNotificationScreen({super.key});

  @override
  State<ChangeNotificationScreen> createState() =>
      _ChangeNotificationScreenState();
}

class _ChangeNotificationScreenState extends State<ChangeNotificationScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  final TextEditingController amountController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  bool generalNotifications = false;
  bool sound = false;
  bool vibrate = false;
  String country = "";
  bool appupdates = false;
  bool billreminder = false;
  bool promotion = false;
  bool disscountAvailable = false;
  bool paymentRequest = false;
  bool newService = false;
  bool newTips = false;

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
                          "Notifications",
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
                              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "General Notifications",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: generalNotifications,
                                    onChanged: (value) {
                                      setState(() {
                                        generalNotifications = value;
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
                              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Sound",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: sound,
                                    onChanged: (value) {
                                      setState(() {
                                        sound = value;
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
                              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Vibrate",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: generalNotifications,
                                    onChanged: (value) {
                                      setState(() {
                                        generalNotifications = value;
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
                              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "App Updates",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: generalNotifications,
                                    onChanged: (value) {
                                      setState(() {
                                        generalNotifications = value;
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
                              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Bill Reminder",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: generalNotifications,
                                    onChanged: (value) {
                                      setState(() {
                                        generalNotifications = value;
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
                              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Promotion",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: generalNotifications,
                                    onChanged: (value) {
                                      setState(() {
                                        generalNotifications = value;
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
                              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Discount Available",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: generalNotifications,
                                    onChanged: (value) {
                                      setState(() {
                                        generalNotifications = value;
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
                              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Payment Request",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: generalNotifications,
                                    onChanged: (value) {
                                      setState(() {
                                        generalNotifications = value;
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
                              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "New Service Available",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: generalNotifications,
                                    onChanged: (value) {
                                      setState(() {
                                        generalNotifications = value;
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
                              padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "New Tips",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                            color: Colors.black.withOpacity(0.5),
                                            fontSize: Dimensions.fontSizeDefault,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  CustomSwitch(
                                    value: generalNotifications,
                                    onChanged: (value) {
                                      setState(() {
                                        generalNotifications = value;
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
          Center(
            child: CustomElevatedButton(
              width: Get.width * 0.9,
              height: 50.0,
              text: 'Update',
              backgroundColor: Theme.of(context).primaryColor,
              borderRadius: 100,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: Dimensions.fontSizeDefault,
                  color: Colors.white,
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
          const SizedBox(
            height: Dimensions.defaultSpacing,
          ),
        ],
      ),
    );
  }
}

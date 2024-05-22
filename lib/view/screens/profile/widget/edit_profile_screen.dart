
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/view/widgets/custom_date_picker.dart';
import 'package:tremortech/view/widgets/custom_dropdown_widget.dart';
import 'package:tremortech/view/widgets/rounded_button.dart';
import 'package:tremortech/view/widgets/textinput_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  final TextEditingController amountController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  String country = "";

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
                          "Edit Profile",
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
                              padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeDefault),
                              child: CustomTextField(
                                borderRadius: Dimensions.radiusLarge,
                                borderColor: Colors.transparent,
                                hintText: "FirstName",
                                controller: descriptionController,
                                fillColor: Theme.of(context)
                                    .disabledColor
                                    .withOpacity(0.1),
                                // hintStyle: AppStyles.getPaGrillHintStyle(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeDefault),
                              child: CustomTextField(
                                borderRadius: Dimensions.radiusLarge,
                                borderColor: Colors.transparent,
                                hintText: "LastName",
                                controller: descriptionController,
                                fillColor: Theme.of(context)
                                    .disabledColor
                                    .withOpacity(0.1),
                                // hintStyle: AppStyles.getPaGrillHintStyle(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeDefault),
                              child: CustomDatePicker(
                                borderRadius: Dimensions.radiusLarge,
                                borderColor: Colors.transparent,
                                hintText: "Date",
                                controller: descriptionController,
                                fillColor: Theme.of(context)
                                    .disabledColor
                                    .withOpacity(0.1),
                                // hintStyle: AppStyles.getPaGrillHintStyle(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeDefault),
                              child: CustomTextField(
                                borderRadius: Dimensions.radiusLarge,
                                borderColor: Colors.transparent,
                                hintText: "useremail@flickapay.com",
                                controller: descriptionController,
                                fillColor: Theme.of(context)
                                    .disabledColor
                                    .withOpacity(0.1),
                                // hintStyle: AppStyles.getPaGrillHintStyle(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeDefault),
                              child: CustomTextField(
                                borderRadius: Dimensions.radiusLarge,
                                borderColor: Colors.transparent,
                                hintText: "Country",
                                controller: descriptionController,
                                fillColor: Theme.of(context)
                                    .disabledColor
                                    .withOpacity(0.1),
                                // hintStyle: AppStyles.getPaGrillHintStyle(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeDefault),
                              child: CustomTextField(
                                borderRadius: Dimensions.radiusLarge,
                                borderColor: Colors.transparent,
                                hintText: "Phone",
                                controller: descriptionController,
                                fillColor: Theme.of(context)
                                    .disabledColor
                                    .withOpacity(0.1),
                                // hintStyle: AppStyles.getPaGrillHintStyle(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeDefault),
                              child: CustomDropdownWidget(
                                items: ["water", "rice"],
                                selectedValue: 'water',
                                onChanged: (value) {
                                  setState(() {
                                    country = value ?? "";
                                  });
                                  print("Selected value: $value");
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeDefault),
                              child: CustomDropdownWidget(
                                items: ["male", "female"],
                                selectedValue: 'male',
                                onChanged: (value) {
                                  setState(() {
                                    country = value ?? "";
                                  });
                                  print("Selected value: $value");
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Dimensions.paddingSizeDefault),
                              child: CustomTextField(
                                borderRadius: Dimensions.radiusLarge,
                                borderColor: Colors.transparent,
                                hintText: "Address",
                                controller: descriptionController,
                                fillColor: Theme.of(context)
                                    .disabledColor
                                    .withOpacity(0.1),
                                // hintStyle: AppStyles.getPaGrillHintStyle(context),
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

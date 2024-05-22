import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/view/widgets/textinput_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPasswordChangeScreen extends StatefulWidget {
  const MyPasswordChangeScreen({super.key});

  @override
  State<MyPasswordChangeScreen> createState() => _MyPasswordChangeScreenState();
}

class _MyPasswordChangeScreenState extends State<MyPasswordChangeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (categoryController) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Change Password",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeDefault,
            ),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Text(
                          "Current Password",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        SizedBox(
                          height: 50,
                          child: CustomTextField(
                            borderRadius: Dimensions.radiusDefault,
                            hintText: 'Enter current password',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
                            isPassword: true,
                            borderWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Text(
                          "New Password",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        SizedBox(
                          height: 50,
                          child: CustomTextField(
                            borderRadius: Dimensions.radiusDefault,
                            hintText: 'Create new password',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
                            isPassword: true,
                            borderWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Text(
                          "Confirm New Password",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        SizedBox(
                          height: 50,
                          child: CustomTextField(
                            borderRadius: Dimensions.radiusDefault,
                            hintText: 'Confirm new password',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
                            isPassword: true,
                            borderWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          width: Get.width,
          padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  width: 0.5,
                  color: Theme.of(context).dividerColor.withOpacity(0.1))),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              animationDuration: const Duration(milliseconds: 500),
              elevation: 0,
              backgroundColor: Theme.of(context).primaryColor,
              textStyle: const TextStyle(
                  color: Colors.white, fontStyle: FontStyle.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  100,
                ),
              ),
              shadowColor: Colors.transparent,
            ),
            onPressed: () async {},
            child: Text(
              "Update Password",
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

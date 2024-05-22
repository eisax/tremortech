import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:tremortech/view/widgets/textinput_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
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
            "My Profile",
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
                    height: Get.height * 0.2,
                    width: Get.width,
                    color: Colors.white,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor:
                              Theme.of(context).hintColor.withOpacity(0.25),
                          child: SvgPicture.asset(
                            Images.imageIcon,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                padding: EdgeInsets.all(
                                  Dimensions.paddingSizeSmall,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: SvgPicture.asset(
                                  Images.camera,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
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
                          "Full Name",
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
                            hintText: 'e.g Jack Dicles',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
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
                          "Phone",
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
                            hintText: 'e.g +26379876543',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
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
                          "Email",
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
                            hintText: 'e.g example@gmail.com',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
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
        bottomSheet: Container(
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
              "Update Profile",
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

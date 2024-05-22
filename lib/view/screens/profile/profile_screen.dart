import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tremortech/helper/route_helper.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.paddingSizeDefault,
                    right: Dimensions.paddingSizeDefault,
                    top: Dimensions.paddingSizeExtraLarge),
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          padding:
                              EdgeInsets.all(Dimensions.paddingSizeDefault),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 100,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius:
                                BorderRadius.circular(Dimensions.radiusDefault),
                            color: Theme.of(context).disabledColor,
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
                              "Profile",
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
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(
                              Dimensions.radiusExtraLarge,
                            )),
                        child: Icon(Icons.more_horiz_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: Get.width * 0.12,
                      backgroundColor: Theme.of(context).disabledColor,
                    ),
                    Text(
                      "Tinash Nash",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: Colors.black,
                          fontSize: Dimensions.fontSizeDefault,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "tnash@tremortech.com",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: Colors.black,
                          fontSize: Dimensions.fontSizeExtraSmall,
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      width: Get.width * 0.9,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Theme.of(context).dividerColor,
                            width: 0.1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      profileButtonWidget(context,
                          icon: Images.shield,
                          title: "Edit Profile",
                          onTap: () => Get.toNamed(RouteHelper.editprofile)),
                      profileButtonWidget(context,
                          icon: Images.notifications,
                          title: "Notifications",
                          onTap: () =>
                              Get.toNamed(RouteHelper.changenotifications)),
                      profileButtonWidget(
                        context,
                        icon: Images.shield,
                        title: "Language",
                        subtitle: "English (US)",
                      ),
                      profileButtonWidget(context,
                          icon: Images.shield,
                          title: "Security",
                          onTap: () => Get.toNamed(RouteHelper.security)),
                      profileButtonWidget(context,
                          icon: Images.shield,
                          title: "Privacy Policy",
                          onTap: () => Get.toNamed(RouteHelper.privacypolicy)),
                      profileButtonWidget(context,
                          icon: Images.shield,title: "Help & Support"),
                      profileButtonWidget(context,
                          icon: Images.chat, title: "Contact Us"),
                      profileButtonWidget(context,
                          icon: Images.logout,
                          title: "Logout",
                          color: Colors.red),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileButtonWidget(
    BuildContext context, {
    String? icon,
    String? title,
    String? subtitle,
    Color? color,
    void Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width,
        padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    icon ?? "",
                    width: 18,
                    height: 18,
                    color: color,
                  ),
                ),
                SizedBox(
                  width: Dimensions.defaultSpacing,
                ),
                Text(
                  title ?? "",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: Dimensions.fontSizeDefault,
                      color: color,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodySmall ?.copyWith(
                        fontSize: Dimensions.fontSizeDefault,
                        fontWeight: FontWeight.w500),
                  ),
                SizedBox(
                  width: Dimensions.defaultSpacing,
                ),
                Container(
                  width: 24,
                  height: 24,
                  child: Icon(Icons.arrow_forward_ios,size: 18,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

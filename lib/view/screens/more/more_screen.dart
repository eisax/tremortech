import 'package:tremortech/helper/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:get/get.dart';

class MoreItems {
  int id;
  String title;
  String route;
  String icon;

  MoreItems(
      {required this.id,
      required this.title,
      required this.route,
      required this.icon});
}

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    List<MoreItems> itemList = [
      MoreItems(
          id: 0,
          icon: Images.profile,
          title: 'My Profile',
          route: RouteHelper.myprofile),
      MoreItems(
          id: 0,
          icon: Images.cartOutline,
          title: 'Orders',
          route: RouteHelper.myorders),
      MoreItems(
          id: 0,
          icon: Images.favorite,
          title: 'Wishlist',
          route: RouteHelper.myfavourites),
      MoreItems(
          id: 0,
          icon: Images.location,
          title: 'Manage Address',
          route: RouteHelper.myaddress),
      MoreItems(
          id: 0,
          icon: Images.language,
          title: 'Language',
          route: RouteHelper.mylanguage),
      MoreItems(
          id: 0,
          icon: Images.key,
          title: 'Change Password',
          route: RouteHelper.mypassword),
      MoreItems(
          id: 0,
          icon: Images.refund,
          title: 'Refund Policy',
          route: RouteHelper.myrefundpolicy),
      MoreItems(
          id: 0,
          icon: Images.orders,
          title: 'Terms & Conditions',
          route: RouteHelper.mytermsandconditions),
      MoreItems(
          id: 0,
          icon: Images.shield,
          title: 'Privacy Policy',
          route: RouteHelper.myprivacypolicy),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    Dimensions.paddingSizeDefault,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(
                      Dimensions.radiusExtraLarge,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Theme.of(context).primaryColor.withOpacity(0.75),
                          Theme.of(context).primaryColor,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(
                        Dimensions.radiusExtraLarge,
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: Dimensions.paddingSizeExtraLarge,
                          backgroundColor: Theme.of(context).hintColor,
                          backgroundImage:
                              AssetImage("assets/images/profile/profile.jpg"),
                        ),
                        SizedBox(
                          width: Dimensions.paddingSizeDefault,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Tinashe Nash",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            Text(
                              "tnash@gmail.com",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    Dimensions.paddingSizeDefault,
                  ),
                  child: Column(
                    children: itemList
                        .map(
                          (MoreItems item) => GestureDetector(
                            onTap: () => Get.toNamed(item.route),
                            child: Container(
                              margin: EdgeInsets.only(
                                bottom: Dimensions.paddingSizeSmall,
                              ),
                              padding: EdgeInsets.all(
                                Dimensions.paddingSizeDefault,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Theme.of(context).highlightColor,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radiusDefault)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        item.icon,
                                        color: Theme.of(context).primaryColor,
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: Dimensions.paddingSizeSmall,
                                      ),
                                      Text(
                                        item.title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.w400,
                                            ),
                                      ),
                                    ],
                                  ),
                                  SvgPicture.asset(
                                    Images.arrowforward,
                                    color: Theme.of(context).hintColor,
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Divider(
                  color: Theme.of(context).hintColor.withOpacity(0.1),
                  thickness: Dimensions.paddingSizeDefault,
                ),
                Padding(
                  padding: EdgeInsets.all(
                    Dimensions.paddingSizeDefault,
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeSmall,
                    ),
                    padding: EdgeInsets.all(
                      Dimensions.paddingSizeDefault,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Theme.of(context).highlightColor,
                        ),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radiusDefault)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              Images.logout,
                              color: Colors.red,
                              height: 20,
                            ),
                            SizedBox(
                              width: Dimensions.paddingSizeSmall,
                            ),
                            Text(
                              "Log out",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          Images.arrowforward,
                          color: Theme.of(context).hintColor,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).hintColor.withOpacity(0.1),
                  thickness: Dimensions.paddingSizeExtraLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

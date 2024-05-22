// ignore_for_file: deprecated_member_use
import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/data/model/product_item_model.dart';
import 'package:tremortech/view/screens/explore/widgets/item_summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tremortech/data/model/brands_model.dart';
import 'package:tremortech/helper/route_helper.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:tremortech/view/screens/home/widget/page_image_scroll_widget.dart';
import 'package:tremortech/view/widgets/bouncing_scroll_physics.dart';
import 'package:tremortech/view/widgets/dashed_divider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isByLocation = false;
  int selectedCategory = 0;
  List<BrandsModel> brands = [
    BrandsModel(id: 0, logo: "assets/images/logo/nike.jpg", brandName: "Nike"),
    BrandsModel(
        id: 0, logo: "assets/images/logo/rolex.jpg", brandName: "Rolex"),
    BrandsModel(
        id: 0, logo: "assets/images/logo/apple.png", brandName: "Apple"),
    BrandsModel(
        id: 0, logo: "assets/images/logo/samsung.jpeg", brandName: "Samsung"),
    BrandsModel(id: 0, logo: "assets/images/logo/bata.png", brandName: "Bata"),
    BrandsModel(
        id: 0, logo: "assets/images/logo/channel.gif", brandName: "Channel"),
    BrandsModel(
        id: 0, logo: "assets/images/logo/gicci.jpg", brandName: "Gucci"),
    BrandsModel(
        id: 0, logo: "assets/images/logo/levis.jpg", brandName: "Levi's"),
    BrandsModel(
        id: 0,
        logo: "assets/images/logo/luisvuitton.png",
        brandName: "Luis Vuitton"),
    BrandsModel(
        id: 0, logo: "assets/images/logo/adidas.png", brandName: "Adidas"),
    BrandsModel(
        id: 0, logo: "assets/images/logo/omega.jpeg", brandName: "Omega"),
    BrandsModel(id: 0, logo: "assets/images/logo/puma.png", brandName: "Puma"),
  ];
  final categoryTypes = [
    "All",
    "Fashion",
    "Furniture",
    "Electronics",
    "Digital Product",
    "Home Appliance",
    "Vegetable",
    "Decor",
    "Baby Care",
    "Drinks"
  ];

  final brandsTitles = [
    "All",
    "Adidas",
    "Aldo",
    "AllenSolly",
    "Amante",
    "Amrotan",
    "And",
    "Asics",
    "Aurelia",
    "Baggit",
    "Bansri",
    "Bata"
  ];

  void _route() async {
    await Get.find<CategoryController>().getCategories();
    await Get.find<CategoryController>().getProducts();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _route();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
        builder: (categoryController) => Scaffold(
              backgroundColor: const Color(0xFFDAE4E7).withOpacity(0.25),
              body: SafeArea(
                child: NestedScrollView(
                  physics: const BouncingScrollPhysics(),
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxScrolled) {
                    return <Widget>[
                      SliverAppBar(
                          surfaceTintColor: Colors.transparent,
                          backgroundColor: Colors.white,
                          leadingWidth: 0,
                          automaticallyImplyLeading: false,
                          stretch: true,
                          expandedHeight: 70,
                          flexibleSpace: LayoutBuilder(builder:
                              (BuildContext context,
                                  BoxConstraints constraints) {
                            return FlexibleSpaceBar(
                              collapseMode: CollapseMode.parallax,
                              background: PreferredSize(
                                preferredSize: const Size.fromHeight(62),
                                child: Container(
                                  width: Get.width,
                                  padding: EdgeInsets.all(
                                      Dimensions.paddingSizeDefault),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(
                                        Dimensions.radiusLarge,
                                      ),
                                      bottomRight: Radius.circular(
                                        Dimensions.radiusLarge,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 35,
                                        height: 35,
                                        child: Image(
                                          image: AssetImage(
                                            Images.iconSmall,
                                          ),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Dimensions.paddingSizeSmall,
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Deliver To",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelSmall
                                                      ?.copyWith(
                                                          color:
                                                              Theme.of(context)
                                                                  .hintColor,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                ),
                                                Text(
                                                  "5 Meadow, Westgate, Area D",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelMedium
                                                      ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          size: 34,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
                      SliverAppBar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          surfaceTintColor: Colors.transparent,
                          pinned: true,
                          automaticallyImplyLeading: false,
                          leadingWidth: 0,
                          expandedHeight: 62,
                          title: PreferredSize(
                            preferredSize: const Size.fromHeight(62),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 12, 12),
                              child: Container(
                                width: Get.width,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                      Dimensions.radiusLarge,
                                    ),
                                    bottomRight: Radius.circular(
                                      Dimensions.radiusLarge,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    //search button
                                    SizedBox(
                                      width: Get.width,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                animationDuration:
                                                    const Duration(
                                                        milliseconds: 500),
                                                elevation: 0,
                                                padding: EdgeInsets.symmetric(
                                                    vertical: Dimensions
                                                        .paddingSizeDefault,
                                                    horizontal: Dimensions
                                                        .paddingSizeDefault),
                                                backgroundColor: Colors.white,
                                                textStyle: const TextStyle(
                                                    color: Colors.white,
                                                    fontStyle:
                                                        FontStyle.normal),
                                                side: BorderSide(
                                                    width: 0.25,
                                                    color: Theme.of(context)
                                                        .dividerColor
                                                        .withOpacity(0.5)),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    Dimensions.radiusDefault,
                                                  ),
                                                ),
                                                shadowColor: Colors.transparent,
                                              ),
                                              onPressed: () async {
                                                Get.toNamed(RouteHelper.search);
                                              },
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    Images.search,
                                                    width: 18,
                                                    height: 18,
                                                    color: Theme.of(context)
                                                        .hintColor,
                                                  ),
                                                  Text(
                                                    "Search items here",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelSmall
                                                        ?.copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .hintColor,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
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
                              ),
                            ),
                          ))
                    ];
                  },
                  body: SizedBox(
                    width: Get.width,
                    height: Get.height,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minHeight: MediaQuery.of(context).size.height),
                      child: IntrinsicHeight(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Dimensions.paddingSizeExtraLarge,
                              ),

                              //summary items
                              SizedBox(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Dimensions.paddingSizeSmall,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                            Colors.white.withOpacity(0.1),
                                          ],
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          ImageScrollTemplate(
                                            imageScrollList: const [
                                              Images.billboard1,
                                              Images.billboard2
                                            ],
                                            height: Get.height * 0.2,
                                            isScrollIndicatorVisible: true,
                                            isTimer: true,
                                          ),
                                          SizedBox(
                                            height: Dimensions
                                                .paddingSizeExtraLarge,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Categories",
                                                selectionColor: null,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelLarge
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: Dimensions
                                                            .fontSizeExtraLarge),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "View More",
                                                    selectionColor: null,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelSmall
                                                        ?.copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    size: 16,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height:
                                                Dimensions.paddingSizeDefault,
                                          ),
                                          ScrollConfiguration(
                                            behavior: BouncingScrollBehavior(),
                                            child: SingleChildScrollView(
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children:
                                                    categoryController
                                                        .categories
                                                        .asMap()
                                                        .entries
                                                        .map(
                                                          (category) =>
                                                              Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                              right: Dimensions
                                                                  .paddingSizeSmall,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                Dimensions
                                                                    .radiusSmall,
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                width: 0.5,
                                                                color: Theme.of(
                                                                        context)
                                                                    .secondaryHeaderColor,
                                                              ),
                                                            ),
                                                            padding:
                                                                EdgeInsets.all(
                                                              Dimensions
                                                                  .paddingSizeExtraSmall,
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                GestureDetector(
                                                                  onTap: () =>
                                                                      setState(
                                                                          () {
                                                                    selectedCategory =
                                                                        category
                                                                            .key;
                                                                  }),
                                                                  child:
                                                                      AnimatedContainer(
                                                                    width: 60,
                                                                    height: 60,
                                                                    padding: EdgeInsets.all(
                                                                        Dimensions
                                                                            .paddingSizeSmall),
                                                                    duration: const Duration(
                                                                        milliseconds:
                                                                            500),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: category.value.image !=
                                                                              null
                                                                          ? Colors
                                                                              .transparent
                                                                          : Theme.of(context)
                                                                              .highlightColor,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                        Dimensions
                                                                            .radiusSmall,
                                                                      ),
                                                                    ),
                                                                    child: category.value.image !=
                                                                            null
                                                                        ? SvgPicture
                                                                            .asset(
                                                                            category.value.image ??
                                                                                "",
                                                                            height:
                                                                                16,
                                                                            width:
                                                                                16,
                                                                          )
                                                                        : null,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: Dimensions
                                                                      .paddingSizeExtraSmall,
                                                                ),
                                                                Text(
                                                                  category.value
                                                                      .name,
                                                                  selectionColor:
                                                                      null,
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .labelSmall
                                                                      ?.copyWith(
                                                                        fontSize:
                                                                            Dimensions.fontSizeExtraSmall,
                                                                      ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                        .toList(),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                                Dimensions.paddingSizeDefault,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: Get.width,
                                      child: DashedDivider(
                                        color: Colors.black.withOpacity(0.25),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.paddingSizeDefault,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Dimensions.paddingSizeSmall,
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Popular Products",
                                                selectionColor: null,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelLarge
                                                    ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: Dimensions
                                                            .fontSizeExtraLarge),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "View More",
                                                    selectionColor: null,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelSmall
                                                        ?.copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    size: 16,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height:
                                                Dimensions.paddingSizeDefault,
                                          ),
                                          ScrollConfiguration(
                                            behavior: BouncingScrollBehavior(),
                                            child: SingleChildScrollView(
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children:
                                                    categoryController.products
                                                        .map(
                                                          (CatalogItem item) =>
                                                              Padding(
                                                            padding: EdgeInsets.only(
                                                                left: Dimensions
                                                                    .paddingSizeExtraSmall,
                                                                right: Dimensions
                                                                    .paddingSizeSmall),
                                                            child:
                                                                ItemSummaryWidget(
                                                              item: item,
                                                            ),
                                                          ),
                                                        )
                                                        .toList(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: Dimensions.paddingSizeDefault,
                                    ),

                                    Container(
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height:
                                                Dimensions.paddingSizeDefault,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  Dimensions.paddingSizeSmall,
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: Dimensions
                                                            .paddingSizeSmall,
                                                      ),
                                                      child: Text(
                                                        "Just For You",
                                                        selectionColor: null,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelLarge
                                                            ?.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: Dimensions
                                                                    .fontSizeExtraLarge),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: Dimensions
                                                          .paddingSizeExtraSmall),
                                                  width: Get.width,
                                                  height: Get.height * 1.3,
                                                  child: GridView.count(
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    // physics:
                                                    //     const BouncingScrollPhysics(),
                                                    crossAxisCount: 2,

                                                    childAspectRatio: 0.7,
                                                    crossAxisSpacing: Dimensions
                                                        .paddingSizeSmall,
                                                    mainAxisSpacing: Dimensions
                                                        .paddingSizeSmall,
                                                    children: List.generate(
                                                        categoryController
                                                                    .products
                                                                    .length >
                                                                8
                                                            ? 8
                                                            : categoryController
                                                                .products
                                                                .length,
                                                        (index) {
                                                      return GestureDetector(
                                                        child:
                                                            ItemSummaryWidget(
                                                          isCategoryGrid: true,
                                                          item:
                                                              categoryController
                                                                      .products[
                                                                  index],
                                                        ),
                                                      );
                                                    }),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: Dimensions.paddingSizeSmall,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  Dimensions.paddingSizeDefault,
                                            ),
                                            child: Container(
                                              width: Get.width,
                                              padding: EdgeInsets.all(
                                                Dimensions.paddingSizeSmall,
                                              ),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  width: 1,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  Dimensions.radiusSmall,
                                                ),
                                                color: Theme.of(context)
                                                    .primaryColor
                                                    .withOpacity(
                                                      0.1,
                                                    ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "View More",
                                                    selectionColor: null,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelSmall
                                                        ?.copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    size: 16,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                                Dimensions.paddingSizeDefault,
                                          ),
                                        ],
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
                  ),
                ),
              ),
            ));
  }
}

// ignore_for_file: deprecated_member_use
import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/util/images.dart';
import 'package:tremortech/view/screens/explore/widgets/item_summary_widget.dart';
import 'package:tremortech/view/screens/product_details_screen/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController textController = TextEditingController();
  String search = '';
  bool isSubmitted = false;
  bool showClearButton = false;

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
                      expandedHeight: 90,
                      flexibleSpace: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return FlexibleSpaceBar(
                          collapseMode: CollapseMode.parallax,
                          background: PreferredSize(
                            preferredSize: const Size.fromHeight(62),
                            child: Container(
                              width: Get.width,
                              padding: EdgeInsets.only(
                                right: Dimensions.paddingSizeDefault,
                              ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        icon: const Icon(
                                          Icons.arrow_back,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Dimensions.paddingSizeSmall,
                                      ),
                                      Text(
                                        "All Products",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  Dimensions.fontSizeLarge,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(
                                            Dimensions.paddingSizeSmall),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Theme.of(context)
                                                .hintColor
                                                .withOpacity(0.25)),
                                        child: SvgPicture.asset(
                                          Images.cartSolid,
                                          color: Theme.of(context)
                                              .primaryColorDark,
                                        ),
                                      ),
                                      SizedBox(
                                        width: Dimensions.paddingSizeSmall,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(
                                            Dimensions.paddingSizeSmall),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Theme.of(context)
                                                .hintColor
                                                .withOpacity(0.25)),
                                        child: SvgPicture.asset(
                                          Images.filter,
                                          color: Theme.of(context)
                                              .primaryColorDark,
                                        ),
                                      ),
                                    ],
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
                          padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: Get.width,
                                  child: TextField(
                                    controller: textController,
                                    keyboardType: TextInputType.text,
                                    onChanged: (value) {
                                      setState(() {
                                        isSubmitted = false;
                                        showClearButton = true;
                                        setState(() {
                                          search = value;
                                        });
                                        categoryController.searchCatalogItems(
                                            textController.text);
                                      });
                                    },
                                    onSubmitted: (String result) {
                                      setState(() {
                                        isSubmitted = true;
                                        showClearButton = false;
                                      });
                                    },
                                    onTap: () {
                                      setState(() {
                                        showClearButton =
                                            textController.text.isNotEmpty;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.search_sharp,
                                        color: Colors.grey[600]!,
                                        size: 25,
                                      ),
                                      suffixIcon: showClearButton &&
                                              textController.text.isNotEmpty
                                          ? IconButton(
                                              icon: const Icon(
                                                Icons.cancel,
                                                color: Colors.black,
                                              ),
                                              onPressed: () {
                                                textController.clear();
                                                setState(() {});
                                              })
                                          : IconButton(
                                              icon: Icon(Icons.close,
                                                  color: Colors.grey[600]!),
                                              iconSize: 25,
                                              splashRadius: 1,
                                              onPressed: () {
                                                Get.back();
                                              }),
                                      filled: true,
                                      fillColor: Colors.grey.shade200,
                                      hintText: 'Search items here',
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: Colors.grey.shade500),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20.0),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.radiusSmall),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.radiusSmall),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(
                                            Dimensions.radiusSmall),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))
                ];
              },
              body: Container(
                width: Get.width,
                height: Get.height,
                padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
                child: Column(
                  children: [
                    categoryController.searchresults.isEmpty
                        ? const Expanded(
                            child: Center(child: Text('No products available')))
                        : Expanded(
                            child: GridView.count(
                            physics: const BouncingScrollPhysics(),
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: Dimensions.paddingSizeSmall,
                            mainAxisSpacing: Dimensions.paddingSizeSmall,
                            children: List.generate(
                                categoryController.products.length, (index) {
                              return GestureDetector(
                                  onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductDetailsScreen(
                                            item: categoryController
                                                .searchresults[index],
                                          ),
                                        ),
                                      ),
                                  child:
                                      (categoryController.searchresults.length >
                                              index)
                                          ? ItemSummaryWidget(
                                              isCategoryGrid: false,
                                              item: categoryController
                                                  .searchresults[index],
                                              isItemCartAddable: false,
                                            )
                                          : Container());
                            }),
                          ))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

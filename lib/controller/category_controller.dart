import 'package:tremortech/data/model/cart_model.dart';
import 'package:tremortech/data/model/product_item_model.dart';
import 'package:tremortech/util/images.dart';
import 'package:get/get.dart';
import 'package:tremortech/data/api/api_client.dart';
import 'package:tremortech/data/model/category_model.dart';
import 'package:tremortech/data/repository/survey_repo.dart';

class CategoryController extends GetxController implements GetxService {
  SurveyRepo surveyRepo;
  final ApiClient apiClient;
  CategoryController({
    required this.apiClient,
    required this.surveyRepo,
  });

  final bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<CategoryModel> _categories = [];
  List<CategoryModel> get categories => _categories;

  List<CatalogItem> _products = [];
  List<CatalogItem> get products => _products;

  List<CartModel> _cart = [];
  List<CartModel> get cart => _cart;

  List<CatalogItem> _searchresults = [];
  List<CatalogItem> get searchresults => _searchresults;

  Future<void> getCategories() async {
    _categories = [
      CategoryModel(
        id: 1,
        name: 'Sink',
        description:
            'The sink is a vital fixture in any bathroom, providing a convenient space for handwashing, face washing, and other personal hygiene tasks. It typically consists of a basin with faucets for controlling water flow. Sinks come in various styles, including pedestal sinks, wall-mounted sinks, and vanity sinks.',
        image: Images.sink,
      ),
      CategoryModel(
        id: 2,
        name: 'Toilet',
        description:
            'The toilet is a sanitary fixture used for the disposal of human waste. It typically consists of a bowl connected to a flushing mechanism and a seat for sitting. Toilets come in different designs, including two-piece toilets, one-piece toilets, and wall-hung toilets.',
        image: Images.toilet,
      ),
      CategoryModel(
        id: 3,
        name: 'Bathtub',
        description:
            'The bathtub is a fixture designed for bathing purposes. It provides a space for soaking and relaxing in water. Bathtubs come in various shapes and sizes, including alcove tubs, freestanding tubs, and corner tubs.',
        image: Images.tub,
      ),
      CategoryModel(
        id: 4,
        name: 'Shower',
        description:
            'The shower is a fixture used for taking showers, providing a quick and efficient way to cleanse the body. It typically consists of a showerhead, controls for adjusting water temperature and pressure, and a drainage system. Showers can be enclosed in a shower stall or integrated with a bathtub.',
        image: Images.tub,
      ),
      CategoryModel(
        id: 5,
        name: 'Mirror',
        description:
            'Mirrors are essential for grooming and personal hygiene tasks in the bathroom. They come in various shapes, sizes, and styles, and may be',
        image: Images.mirror,
      ),
      CategoryModel(
        id: 6,
        name: 'Towel Rack',
        description:
            'Towel racks are used to hang towels for drying after use. They come in various designs, including wall-mounted racks and freestanding racks.',
        image: Images.towel,
      ),
      CategoryModel(
        id: 7,
        name: 'Shampoo Dispenser',
        description:
            'Shampoo dispensers are containers used to store and dispense shampoo conveniently in the shower area. They help keep the shower space organized and clutter-free.',
        image: Images.shampoo,
      ),
      CategoryModel(
        id: 8,
        name: 'Soap Dish',
        description:
            'A soap dish is a small container or tray used to hold bar soap in the bathroom. It helps keep the soap dry and prevents it from becoming soggy.',
        image: Images.soap,
      ),
      CategoryModel(
        id: 9,
        name: 'Toilet Paper Holder',
        description:
            'A toilet paper holder is a device used to hold and dispense toilet paper rolls near the toilet. It provides convenient access to toilet paper for users.',
        image: Images.toilet,
      ),
      CategoryModel(
        id: 10,
        name: 'Cabinet',
        description:
            'Cabinets are storage units used to store bathroom essentials such as towels, toiletries, and cleaning supplies. They come in various sizes and designs.',
        image: Images.cabinet,
      ),
      CategoryModel(
        id: 11,
        name: 'Faucet',
        description:
            'A faucet is a device used to control the flow of water from the plumbing pipes. It is essential for controlling water flow in sinks, bathtubs, and showers.',
        image: Images.faucet,
      ),
      CategoryModel(
        id: 12,
        name: 'Towel Warmer',
        description:
            'A towel warmer is a device used to heat towels, providing warmth and comfort after bathing. It helps keep towels dry and prevents them from becoming damp and musty.',
        image: Images.towel,
      ),
      CategoryModel(
        id: 13,
        name: 'Toilet Brush',
        description:
            'A toilet brush is a cleaning tool used to scrub and clean the inside of the toilet bowl. It helps remove stains, bacteria, and buildup for a hygienic toilet.',
        image: Images.toilet,
      ),
      CategoryModel(
        id: 14,
        name: 'Toilet Seat Cover',
        description:
            'A toilet seat cover is a disposable or reusable cover placed over the toilet seat for hygienic purposes. It provides a barrier between the user and the toilet seat surface.',
        image: Images.toilet,
      ),
      CategoryModel(
        id: 15,
        name: 'Trash Can',
        description:
            'A trash can is a container used to collect and dispose of waste in the bathroom. It helps keep the bathroom clean and organized by providing a designated space for trash.',
        image: Images.trash,
      )
    ];
    update();
  }

  Future<void> getProducts() async {
    _products = [
      CatalogItem(
        id: 1,
        blurHash: "",
        description: "",
        name: "aBath Tub 1",
        altDescription: "",
        categories: ["Bathroom", "Faucet"],
        likes: 85,
        url: "",
        image: "assets/images/products/bathtub/bathtub",
        price: 59.99,
        oldPrice: 69.99,
      ),
      CatalogItem(
        id: 2,
        blurHash: "",
        description: "",
        name: "Bath Tub 2",
        altDescription: "",
        categories: ["Bathroom", "Faucet"],
        likes: 85,
        url: "",
        image: "assets/images/products/bathtub/bathtub",
        price: 59.99,
        oldPrice: 69.99,
      ),
      CatalogItem(
        id: 3,
        blurHash: "",
        description: "",
        name: "Bath Tub 3",
        altDescription: "",
        categories: ["Bathroom", "Faucet"],
        likes: 85,
        url: "",
        image: "assets/images/products/bathtub/bathtub",
        price: 59.99,
        oldPrice: 69.99,
      ),
      CatalogItem(
        id: 4,
        blurHash: "",
        description: "",
        name: "Bath Tub 4",
        altDescription: "",
        categories: ["Bathroom", "Faucet"],
        likes: 85,
        url: "",
        image: "assets/images/products/bathtub/bathtub",
        price: 59.99,
        oldPrice: null,
      ),
      CatalogItem(
        id: 5,
        blurHash: "",
        description: "",
        name: "Bath Tub 5",
        altDescription: "",
        categories: ["Bathtub"],
        likes: 85,
        url: "",
        image: "assets/images/products/bathtub/bathtub",
        price: 59.99,
        oldPrice: 69.99,
      ),
    ];
    update();
  }

  bool itemInCart(int idToCheck) {
    return _cart.any((item) => item.id == idToCheck);
  }

  Future<void> addItemInCart({required CartModel item}) async {
    if (!itemInCart(item.id)) {
      _cart.add(item);
      update();
    }
    update();
  }

  int quantityInCart(int idToCheck) {
    int totalQuantity = 0;
    for (var item in _cart) {
      if (item.id == idToCheck) {
        totalQuantity += item.quantity;
      }
    }
    return totalQuantity;
  }

  void addItemToCart(int idToModify) {
    for (var item in _cart) {
      if (item.id == idToModify) {
        item.quantity += 1;

        if (item.quantity < 1) {
          _cart.remove(item);
        }
      }
      update();
    }
  }

  void removeItemToCart(int idToModify) {
    for (var item in _cart) {
      if (item.id == idToModify) {
        item.quantity -= 1;

        if (item.quantity < 1) {
          _cart.remove(item);
        }
      }
      update();
    }
  }

  double calculateCartTotal() {
    double totalQuantity = 0;
    for (var item in _cart) {
      totalQuantity += item.price * item.quantity;
    }
    return totalQuantity;
  }

  void searchCatalogItems(searchString) {
    _searchresults = [];
     update();
    for (int i = 0; i < _products.length; i++) {
      if (_products[i].name!.contains(searchString)) {
        _searchresults.add(_products[i]);
        update();
      }
    }
    print(_searchresults.toString());
  }
}

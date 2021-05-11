class APIConstants {
  // static const String BASE_URL = "http://api.cknjudev.com/v1/";
  // static const String BASE_URL = "http://192.168.24.36/annabelle/rest/V1/";
  static const String BASE_URL =
      "http://opso.dev.drcsystems.ooo/magento-projects/annabelle-web-api/";

  static const String API_VERSION = "rest/V1/";
  static const String IMAGE_URL = "pub/media/catalog/product";
  static const String BASE_URL_WITH_VERSION = BASE_URL + API_VERSION;

  // static const String BASE_URL = "http://192.168.24.107:6633/v1/";

  static const String LOGIN = "integration/customer/customtoken";
  static const String SIGN_UP = "customercreate";
  static const String CUSTOMER_DETAIL = "customers/me";

  static const String HOME = "homepage";
  static const String ProductList = "categorylayer/productfilter";
  static const String ProductListNew = "category/filter/V1/";
  static const String ProductDetail = "product";

  static const String CATEGORY = "allcategories";

  static const String WISH_LIST = "wishlist";
  static const String REMOVE_WISH_LIST = "wishlist/remove";
  static const String WISH_LIST_CART = "wishlist/move-to-cart";
  static const String ADD_WISH_LIST = "wishlist/add";

  static const String CART_LIST = "carts/mine/";
  static const String GUEST_CART = "guest-carts/";
  static const String GUEST_CART_TOTAL = "totals";
  static const String REMOVE_CART_LIST = "carts/mine/items/";
  static const String CART_SUMMARY = "carts/mine/totals";
  static const String RETRIVE_COUPON = "carts/mine/coupons";
  static const String GUEST_RETRIVE_COUPON = "coupons";
  static const String APPLY_COUPON = "carts/mine/coupons/";
  static const String REMOVE_COUPON = "carts/mine/coupons";
  static const String UPDATE_CART = "carts/mine/items/";

  static const String USER_SHIPPING_METHOD =
      "carts/mine/estimate-shipping-methods";
  static const String USER_SHIPPING_METHOD_BY_ADDRESS_ID =
      "carts/mine/estimate-shipping-methods-by-address-id";
  static const String USER_SHIPPING_INFORMATION =
      "carts/mine/shipping-information";
  static const String USER_PAYMENT_INFORMATION =
      "carts/mine/payment-information";

  static const String GUEST_SHIPPING_METHODS = "/estimate-shipping-methods";
  static const String GUEST_SHIPPING_INFORMATION = "/shipping-information";
  static const String GUEST_PAYMENT_INFORMATION = "/payment-information";

  static const String ORDER_LIST = "sales-orders/";
  static const String ORDERS = "orders";
  static const String ORDERS_SUCCESS = "order/success";
  static const String CANCEL = "cancel";

  static const String LANGUAGES = "utils/language-messages";
  static const String COUNTRIES = "utils/countries";
  static const String BRANDS = "utils/brands";
  static const String MODELS = "utils/models/";
  static const String ENGINES = "utils/engines/";
  static const String FEATURES = "utils/features?search=";

  static const String CARSELL = "cars";
  static const String PRODUCTMEDIA = "products";
  static const String CONTACTINFO = "requests/contact";
  static const String UPLOADCARSMEDIA = "cars/upload-media";

  static const String COMMONUTILS = "utils/common";

  static const String CREATE_GUEST_QUOTE_ID = "guest-carts";
  static const String CREATE_USER_QUOTE_ID = "carts/mine";

  static const String ADD_GUEST_CART = "items";
  static const String ADD_USER_CART = "carts/mine/items";

  static const String COUNTRY_DATA = "directory/countries";
  static const String FORGOT_PASSWORD = "customers/password";

  static const String ADMIN_TOKEN = "integration/admin/token";

  static const String ADDRESS_BOOK = "getaddresses";
  static const String ADD_ADDRESS = "addnewaddress";
  static const String UPDATE_ADDRESS = "address/createUpdate";
  static const String REMOVE_ADDRESS = "addresses/";

  static const String GET_RSA = "CCavenue/GetRSA.php";

  static const String CCAVENUE_MERCHANT_ID = "45990";
  static const String CCAVENUE_ACCESS_CODE = "AVTB03HE43BS84BTSB";
  static const String CCAVENUE_TRANS_URL =
      "https://secure.ccavenue.ae/transaction/initTrans";
  static const String CCAVENUE_REDIRECT_URL =
      "http://opso.dev.drcsystems.ooo/magento-projects/annabelle-web-api/CCavenue/ccavResponseHandler.php";
}

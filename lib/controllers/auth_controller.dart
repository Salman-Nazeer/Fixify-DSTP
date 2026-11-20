import 'package:fixify/views/nav_bar.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  // Map<String, dynamic> logInResponse = {};
  // RxBool isObscured = true.obs;
  // RxBool isLoading = false.obs;

  // void changeObscured() {
  //   isObscured.value = !isObscured.value;
  // }

  @override
  void onReady() {
    // screenLoader();
    // TODO: implement onReady
    super.onReady();
  }

  // Log In Screen
  // Future<void> logIn({
  //   required String emailAddress,
  //   required String password,
  // }) async {
  //   isLoading.value = true;
  //   update();

  //   var myBody = {'email': emailAddress, 'password': password};

  //   var response = await ApiController().post(
  //     url: ApiConstant.logInApi,
  //     body: myBody,
  //   );

  //   if (response.$1 == 201 || response.$1 == 200) {
  //     logInResponse = jsonDecode(response.$2);
  //     String token = logInResponse['token'];
  //     ApiController().saveToken(token: token);
  //     Get.snackbar("Welcome To", "${logInResponse["user"]["name"]}");
  //     Get.offAll(() => Navbar());
  //     isLoading.value = false;
  //   } else {
  //     var loginRespose = jsonDecode(response.$2);
  //     Get.snackbar("Error", "${loginRespose['message'] ?? 'Login failed'}");
  //     isLoading.value = false;
  //     // update();
  //   }
  // }

  // // Sign Up Screen
  // Future<void> signUp({
  //   required String name,
  //   required String email,
  //   required String password,
  // }) async {
  //   isLoading.value = true;
  //   var myBody = {'name': name, 'email': email, 'password': password};

  //   var response = await ApiController().post(
  //     url: ApiConstant.registerApi,
  //     body: myBody,
  //   );

  //   await Future.delayed(Duration(seconds: 2));
  //   isLoading.value = false;

  //   if (response.$1 == 201 || response.$1 == 200) {
  //     Get.snackbar("Welcome", "Your Account Is Registered");
  //     Get.to(() => LogInPage());
  // } else {
  //   var loginRespose = jsonDecode(response.$2);
  //   Get.snackbar("Error", '${loginRespose['message'] ?? 'Login failed'}');

  //   }
  // }

  // Splash Screen
  Future<void> screenLoader() async {
    await Future.delayed(Duration(seconds: 1));
    Get.offAll(() => Navbar());

    // var response = await ApiController().get(
    //   url: ApiConstant.rememberMeApi,
    //   isToken: true,
    // );
    // if (response.$1 == 201 || response.$1 == 200) {
    //   Get.offAll(() => Navbar());
    // } else {
    //   Get.offAll(() => LogInPage());
    // }
  }
}

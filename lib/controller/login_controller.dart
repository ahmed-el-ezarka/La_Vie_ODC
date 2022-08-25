import 'package:la_vie/models/login.dart';
import 'package:la_vie/models/seed_model.dart';
import 'package:la_vie/network/dio_helper.dart';

//import '../constant.dart';
import '../network/end_points.dart';

class LoginController {
  UserData datauser = UserData();
  Seed seeds = Seed();

  Future<void> login(String email, String password) async {
    var data = {"email": "tohamy1@gmail.com", "password": "mM123456"};
    await DioHelper.postData(
      url: LOGIN,
      data: data,
    ).then((value) {
      if (value.statusCode == 200) {
        // print(value.data);
        datauser = UserData.fromJson(value.data);
        // print(datauser.data!.accessToken);
      //  TOKEN = datauser.data!.accessToken.toString();
       // print(TOKEN);
        //print(datauser.data!.user!.lastName);
        // print(datauser.data!.user!.imageUrl);
        // navigate to new screen
      } else {
        print("error" + value.statusCode.toString());
      }
    });
  }

  Future<void> getSeeds(String SEEDS, String TOKEN) async {
    await DioHelper.getData(url: SEEDS, token: TOKEN).then((value) {
      seeds = Seed.fromJson(value.data);
      print(seeds.data![0].name);
    });
  }
}

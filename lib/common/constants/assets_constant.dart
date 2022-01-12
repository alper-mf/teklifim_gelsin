import 'package:flutter_dotenv/flutter_dotenv.dart';

class AssetsConstant {
  //Lottie Animations
  static String tapAnimation = 'assets/lottie_animations/tap_animation.json';

  //Banks
  static String akbank = 'assets/images/banks/akbank.svg';
  static String teb = 'assets/images/banks/cepteteb.svg';
  static String garanti = 'assets/images/banks/garanti.svg';
  static String isbankasi = 'assets/images/banks/isbankasi.svg';
  static String kuveytturk = 'assets/images/banks/kuveytturk.svg';
  static String odeabank = 'assets/images/banks/odeabank.svg';
  static String vakifbank = 'assets/images/banks/vakifbank.svg';
  static String ziraat = 'assets/images/banks/ziraat.svg';
  static String albaraka = 'assets/images/banks/albaraka.svg';
  static String ing = 'assets/images/banks/ing.svg';
  static String nkolay = 'assets/images/banks/nkolay.svg';
  static String turkiyefinans = 'assets/images/banks/turkiyefinans.svg';

  //ENV Strings
  static String apiURL = '${dotenv.env['API_URL']}';
}

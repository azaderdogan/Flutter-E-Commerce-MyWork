import 'package:flutter/material.dart';
import 'package:shop_app_ecommerce/constant.dart';
import 'package:shop_app_ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app_ecommerce/size_config.dart';

//this is the best pratice
import 'package:shop_app_ecommerce/screens/splash/components/splash_content.dart';
import 'package:shop_app_ecommerce/components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

/**
 * Girişte kayan ekranı burada yapıyoruz
 */
class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Aesoft'a hoşgeldiniz. Haydi alışverişe başla!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          " İnsanları Türkiye'nin her yerinde\n bağlantı kurmasına yardımcı oluyoruz",
      "image": "assets/images/splash_2.png"
    },
    {
      "text":
          "Alışveriş yapmanın kolay yolunu gösteriyoruz, \nSadece bizimle evde kalın",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SizedBox(
        //yazıuı ortaladık
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Devam",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    //önce container gibi davranıp işlem sonunda aniamted yaptık
    return AnimatedContainer(
      duration: kAnimationDuration,
      height: 6,
      width: currentPage == index ? 20 : 6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

/**
 * Expanded : [Satır], [Sütun] veya [Flex] öğelerinin alt öğesini, 
 * esnek parçacığın ana ekseni boyunca kullanılabilir alanı doldurması için genişleten bir parçacık oluşturur.
 * önce expandend ile ekranı 2/3 oranına böldük
 * expadned 1 de resimler ve başlık var.
 * expanded 2 ile ocntinu ve kayan nokta yapacagğız
 * 
*/

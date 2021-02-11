import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:recipie_demo/repository/auth_repositoryImpl.dart';
import 'package:recipie_demo/utils/constants/constants.dart';
import 'package:recipie_demo/utils/navigation.dart';

class Intro extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final slideList = useState<List<Slide>>([]);
    useEffect(() {
      slideList.value.add(Slide(backgroundColor: Colors.pink));
      slideList.value.add(Slide(backgroundColor: Colors.redAccent));
      return;
    }, []);
    final authProvider = useProvider(authRepoProvder);
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: IntroSlider(
          slides: slideList.value,
          onDonePress: () {
            authProvider.signIn();
            // NavigationUtils.pushReplacement(context, routeLogin);
          },
        ),
      ),
    );
  }
}

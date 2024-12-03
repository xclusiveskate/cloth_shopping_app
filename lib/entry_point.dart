import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/bottom_nav.dart';
import 'package:cloth_shopping_app/views/screens/bookmarks/bookmarks.dart';
import 'package:cloth_shopping_app/views/screens/cart/cart.dart';
import 'package:cloth_shopping_app/views/screens/discover/discover.dart';
import 'package:cloth_shopping_app/views/screens/home/home.dart';
import 'package:cloth_shopping_app/views/screens/profile/profile.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});
  static const id = "entryPoint";
  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  List<Widget> pages = const [
    HomePage(),
    DiscoverPage(),
    BookmarksPage(),
    CartPage(),
    ProfilePage()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: bottomNavigationBarMenu(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          }),
    );
  }
}

import 'package:advanced_ui/screens/home/component/recent_book.dart';
import 'package:advanced_ui/themes.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _listCategories = [
    'All Books',
    'Comic',
    'Novel',
    'Manga',
    'Fairy Tales'
  ];

  int _isSelected = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/prof-pic.png'))),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Made,",
                  style: semiBoldText16,
                ),
                Text(
                  "Good Morning",
                  style: regularText14.copyWith(color: greyColor),
                ),
              ],
            ),
            const Spacer(),
            Image.asset(
              "assets/icons/icon_menu.png",
              width: 20.0,
              // height: 18.0,
              // fit: BoxFit.fill,
            ),
          ],
        ),
      );
    }

    Widget searchField() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        // padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Find Your Favorite Book',
            hintStyle: mediumText12.copyWith(color: greyColor),
            fillColor: greyColorSearchField,
            // fillColor: greyColorSearchField,
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            isCollapsed: true,
            contentPadding: const EdgeInsets.all(18),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Icon(
                  Icons.search_rounded,
                  size: 30,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget recentBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: const [
            RecentBook(
              image: "assets/images/recent_book1.png",
              title: "The Magic",
              datapersen: 0.5,
            ),
            SizedBox(
              width: 20,
            ),
            RecentBook(
              image: "assets/images/recent_book2.png",
              title: "The Magic",
              datapersen: 0.7,
            ),
          ],
        ),
      );
    }

    Widget catagories(int index) {
      return InkWell(
        onTap: () {
          setState(() {
            _isSelected = index;
          });
        },
        child: Container(
          margin: const EdgeInsets.only(top: 30, right: 12),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          decoration: BoxDecoration(
              color: _isSelected == index ? greenColor : transParentColor,
              borderRadius: BorderRadius.circular(6)),
          child: Text(
            _listCategories[index],
            style: semiBoldText16.copyWith(
                color: _isSelected == index ? whiteColor : greyColor),
          ),
        ),
      );
    }

    Widget listCategories() {
      return SingleChildScrollView(
        padding: const EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _listCategories
              .asMap()
              .entries
              .map((MapEntry map) => catagories(map.key))
              .toList(),
        ),
      );
    }

    Widget trendingBook() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            margin: const EdgeInsets.only(top: 12),
            height: 160,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/trending_book1.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Gut Kawasaki",
            style: mediumText12.copyWith(color: greyColor),
          ),
          Text(
            "Enchantment",
            style: semiBoldText14.copyWith(color: blackColor),
          ),
        ],
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  const SizedBox(
                    height: 30,
                  ),
                  searchField(),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Recent Book",
                      style: semiBoldText16.copyWith(color: blackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  recentBook()
                ],
              ),
            ),
            listCategories(),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Text(
                "Trending Now",
                style: semiBoldText16.copyWith(color: blackColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: trendingBook(),
            )
          ],
        ));
  }
}

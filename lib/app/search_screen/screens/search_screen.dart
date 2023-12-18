import 'package:dhaka_live/app/search_screen/widgets/search_listview_item.dart';
import 'package:dhaka_live/app/search_screen/widgets/search_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static const pageRoute = "/search-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchHeader(),
            SizedBox(
              width: 390.w,
              height: 648.h,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SearchScreenItem();
                  }),
            ),
            SizedBox(height: 10.h,),
            Image.asset(
              "assets/icons/add.png",
              width: 390.w,
              height: 60.h,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}

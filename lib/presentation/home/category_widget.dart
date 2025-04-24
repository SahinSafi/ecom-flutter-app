part of 'home_screen.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> category = [];
    category.add(SizedBox(width: Dimen.spacing32,));
    for (var url in bannerList) {
      category.add(_buildCategoryItem(url));
      category.add(SizedBox(width: Dimen.spacing32,));
    }
    return Expanded(child: ListView(scrollDirection: Axis.horizontal, children: category));
  }

  Widget _buildCategoryItem(String url) {
    return Column(
      children: [
        ImageLoader(url: url, fit: BoxFit.cover, height: 60, width: 60, borderRadius: 20,),
        SizedBox(height: Dimen.spacing8),
        Text("Category")
      ],
    );
  }

}

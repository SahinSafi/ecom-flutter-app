part of 'home_screen.dart';

class CategoryWidget extends StatelessWidget {

  final List<CategoryEntity> categories;

  const CategoryWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    final List<Widget> categoryWidgets = [];
    categoryWidgets.add(SizedBox(width: Dimen.spacing32,));
    for (var category in categories) {
      categoryWidgets.add(_buildCategoryItem(category));
      categoryWidgets.add(SizedBox(width: Dimen.spacing32,));
    }
    return Expanded(child: ListView(scrollDirection: Axis.horizontal, children: categoryWidgets));
  }

  Widget _buildCategoryItem(CategoryEntity category) {
    return Column(
      children: [
        ImageLoader(url: category.imageUrl, fit: BoxFit.cover, height: 60, width: 60, borderRadius: 20,),
        SizedBox(height: Dimen.spacing8),
        Text(category.title)
      ],
    );
  }

}

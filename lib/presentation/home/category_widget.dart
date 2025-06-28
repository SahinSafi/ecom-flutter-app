part of 'home_screen.dart';

class CategoryWidget extends StatelessWidget {

  final List<CategoryEntity> categories;

  const CategoryWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    final List<Widget> categoryWidgets = [];
    categoryWidgets.add(SizedBox(width: AppDimensions.spacing16,));
    for (var category in categories) {
      categoryWidgets.add(_buildCategoryItem(category));
      categoryWidgets.add(SizedBox(width: AppDimensions.spacing8,));
    }
    return Expanded(child: ListView(scrollDirection: Axis.horizontal, children: categoryWidgets));
  }

  Widget _buildCategoryItem(CategoryEntity category) {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.spacing8),
          child: Column(
            children: [
              ImageLoader(url: category.imageUrl, fit: BoxFit.cover, height: 60, width: 60, borderRadius: 20,),
              SizedBox(height: AppDimensions.spacing8),
              Text(category.title)
            ],
          ),
        ),
      ),
    );
  }

}

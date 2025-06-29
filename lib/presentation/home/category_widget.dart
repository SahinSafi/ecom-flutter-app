part of 'home_screen.dart';

class CategoryWidget extends StatelessWidget {

  final List<CategoryEntity> categories;

  const CategoryWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {

    final List<Widget> categoryWidgets = [];
    categoryWidgets.add(SizedBox(width: AppDimensions.spacing16,));
    for (var category in categories) {
      categoryWidgets.add(_buildCategoryItem(category, context));
      categoryWidgets.add(SizedBox(width: AppDimensions.spacing8,));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: AppDimensions.spacing16,
              right: AppDimensions.spacing16,
              bottom: AppDimensions.spacing8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Categories", style: context.getTextStyle.titleLarge,),
              TextButton(onPressed: (){}, child: Row(children: [Text("See All"), Icon(Icons.arrow_forward)],))
            ],
          ),
        ),
        Expanded(child: ListView(scrollDirection: Axis.horizontal, children: categoryWidgets)),
      ],
    );
  }

  Widget _buildCategoryItem(CategoryEntity category, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 0,
              color: context.getColor.secondary,
              child: Padding(
                padding: const EdgeInsets.all(AppDimensions.spacing16),
                child: ImageLoader(
                  url: category.imageUrl,
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                  borderRadius: 30,
                ),
              )
          ),
          SizedBox(height: AppDimensions.spacing8),
          Text(category.title, style: context.getTextStyle.bodySmall,)
        ],
      ),
    );
  }

}

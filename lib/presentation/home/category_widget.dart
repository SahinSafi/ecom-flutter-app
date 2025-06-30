part of 'home_screen.dart';

class CategoryWidget extends StatelessWidget {

  final List<CategoryEntity> categories;

  const CategoryWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTitle(context),
        SizedBox(
          height: 130,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) => _buildCategoryItem(categories[index], context)
          ),
        ),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
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
    );
  }

  Widget _buildCategoryItem(CategoryEntity category, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.spacing8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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

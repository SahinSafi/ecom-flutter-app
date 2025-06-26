import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/core/entity/apientity/home_api_entity.dart';
import 'package:ecom/core/ui/widgets/NetworkError.dart';
import 'package:ecom/core/ui/widgets/network_image.dart';
import 'package:ecom/presentation/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/ui/values/dimen.dart';
import '../../core/ui/values/strings.dart';

part 'banner_widget.dart';
part 'category_widget.dart';
part 'products_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.titleEcom),),
      body: BlocProvider(
        create: (_) => HomeBloc(),
        child: _buildBody(),
      ),
    );
  }
  
  Widget _buildBody() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        switch(state) {
          case HomeApiLoading() : {
            return const Center(child: CircularProgressIndicator());
          }
          case HomeApiSuccess() : {
            return Column(
              children: [
                SizedBox(height: Dimen.spacing16,),
                BannerWidget(banners: state.homeApiEntity.data.banner,),
                SizedBox(height: Dimen.spacing24,),
                CategoryWidget(categories: state.homeApiEntity.data.category,)
              ],
            );
          }
          case HomeApiError(): {
            return NetworkError(
                errorMessage: state.errorMessage,
                retry: (){
                  BlocProvider.of<HomeBloc>(context).add(FetchHomeApiEvent());
                }
            );
          }
        }
      },
    );
  }
}

final bannerList = [
  "https://static.vecteezy.com/system/resources/previews/027/957/580/non_2x/cute-card-with-cat-free-photo.jpg",
  "https://static.vecteezy.com/system/resources/previews/012/098/088/non_2x/banner-background-cute-cats-say-hello-free-vector.jpg",
  "https://static.vecteezy.com/system/resources/previews/035/381/164/non_2x/ai-generated-a-tabby-cat-looks-up-into-the-sun-free-photo.jpg",
  "https://static.vecteezy.com/system/resources/previews/024/705/172/non_2x/empty-space-background-with-cat-illustration-ai-generative-free-photo.jpg",
  "https://static.vecteezy.com/system/resources/thumbnails/038/954/317/small_2x/ai-generated-stylish-white-cat-with-sunglasses-and-bow-tie-posing-on-a-pink-background-ample-copy-space-on-the-side-photo.jpeg"
];

import 'package:ebook_app/core/helpers/extensions.dart';
import 'package:ebook_app/features/favorite/ui/widgets/favorite_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/logic/app_theme_cubit.dart';
import '../../../core/theming/logic/app_theme_state.dart';
import '../../../core/theming/styles.dart';
import '../logic/favorite_cubit.dart';
import '../logic/favorite_state.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    context.read<FavoriteCubit>().loadFavoriteBooks();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          'Favorites',
          style: AppTextStyles.font24DarkBlueBold.copyWith(
            color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocBuilder<FavoriteCubit, FavoriteState>(
          builder: (context, state) {
            return state.maybeWhen(
              favoriteLoadedSuccessfully: (books) {
                return books.isEmpty?Center(child: Lottie.asset("assets/jsons/empty.json")):FavoriteListView(
                  favoriteBooks: books,
                );
              },
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:booly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:booly_app/Features/home/presentaion/view/book_details_view.dart';
import 'package:booly_app/Features/home/presentaion/view/home_view.dart';
import 'package:booly_app/Features/home/presentaion/view_models/general_books_cubit/generalbooks_cubit.dart';
import 'package:booly_app/Features/home/presentaion/view_models/newest_book_cubit/newestbook_cubit.dart';
import 'package:booly_app/Features/search/data/repos/search_repo.dart';
import 'package:booly_app/Features/search/data/repos/search_repo_imple.dart';
import 'package:booly_app/Features/search/presentaion/view_models/search_cubit/search_cubit.dart';
import 'package:booly_app/Features/spalsh_feature/presentaion/views/splash_view.dart';
import 'package:booly_app/constant.dart';

import 'package:booly_app/core/utils/service_locator.dart';
import 'package:booly_app/core/utils/simple_bloc_observer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServeiceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const TheBookTown());
}

class TheBookTown extends StatelessWidget {
  const TheBookTown({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GeneralbooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewestbookCubit(
            getIt.get<HomeRepoImplementation>(),
          ),
        ),
        BlocProvider(
            create: (context) => SearchCubit(
                  getIt.get<SearchRepoImplementaion>(),
                )),
      ],
      child: MaterialApp(
        routes: {
          HomeView.id: (context) => const HomeView(),
          BookDetailsView.id: (context) => const BookDetailsView(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            appBarTheme: const AppBarTheme(color: kPrimaryColor),
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        home: const SplashView(),
      ),
    );
  }
}

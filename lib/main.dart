import 'package:bookly_app/Features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetch_featured_books/cubit/fetchfeaturedbooks_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetch_newest_books/cubit/fetch_newest_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
  BlocProvider<FetchNewestBooksCubit>(
      create: (context) => FetchNewestBooksCubit(HomeRepoImp(ApiService(Dio()))),
    ),  BlocProvider<FetchfeaturedbooksCubit>(
      create: (context) => FetchfeaturedbooksCubit(HomeRepoImp(ApiService(Dio()))),
    ),      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
      
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Kprimarycolor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

import 'dart:async';
import 'package:enjaz/core/constants/app_colors.dart';
import 'package:enjaz/core/constants/app_enums.dart';
import 'package:enjaz/core/extensions/context_extensions.dart';
import 'package:enjaz/core/widgets/loading_widget.dart';
import 'package:enjaz/core/widgets/club_card_widget.dart';
import 'package:enjaz/features/events/presentation/widgets/event_widget.dart';
import 'package:enjaz/features/sub/search/presentation/cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:enjaz/features/sub/search/presentation/cubit/search_cubit.dart';

class SearchFeatureWidget extends HookWidget {
  const SearchFeatureWidget({super.key, required this.category, this.clubId});

  final String? clubId;
  final SearchCategoryEnum category;

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    Timer? timer;
    String searchText = '';

    return BlocProvider(
      create: (context) => SearchCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<SearchCubit>();

          searchController.addListener(() {
            if (timer != null) {
              timer!.cancel(); 
            }
            timer = Timer(Duration(seconds: 1), () {
              if (searchController.text != searchText) {
                searchText = searchController.text;

                cubit.searchQueryMethod(
                  category: category,
                  searchText: searchText,
                );
              }
            });
          });

          return Scaffold(
            appBar: AppBar(),
            body: BlocListener<SearchCubit, SearchState>(
              listener: (context, state) {
                if (state is SearchErrorState) {
                  context.showSnackBar(state.message, isError: true);
                }
              },
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            height: 48,
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Color(0xFFE0E0E0)),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.search, color: Color(0xFF9E9E9E)),
                                Gap(8),
                                Expanded(
                                  child: TextField(
                                    controller: searchController,
                                    cursorColor: Colors.black,
                                    style: TextStyle(
                                      color: Color(0xFF1F1F1F),
                                      fontSize: 16,
                                    ),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: "اكتب هنا",
                                      hintStyle: TextStyle(
                                        color: Color(0xFF9E9E9E),
                                        fontSize: 16,
                                      ),
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      isDense: true,
                                      contentPadding: EdgeInsets.zero,
                                    ),

                                    onTapOutside: (_) {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Gap(16),
                        BlocBuilder<SearchCubit, SearchState>(
                          builder: (context, state) {
                            switch (state) {
                              case SearchLoadingState _:
                                return Center(
                                  child: LoadingWidget(
                                    color: AppColors.primary,
                                  ),
                                );
                              case SearchErrorState _:
                                return Center(
                                  child: LoadingWidget(color: Colors.red),
                                );
                              case SearchZeroResultState _:
                                return Center(
                                  child: Text("لا يوجد نتائج من البحث"),
                                );
                              case SearchSuccessState _:
                                return ListView.separated(
                                  separatorBuilder: (context, index) => Gap(16),
                                  shrinkWrap: true,
                                  primary: false,
                                  itemCount: state.list.length,
                                  itemBuilder: (context, index) {
                                    final item = state.list[index];
                                    switch (category) {
                                      case .events:
                                        return EventWidget(event: item);
                                      case .clubs:
                                        return ClubCardWidget(
                                          club: item,
                                          showJoinButton: true,
                                        );
                                    }
                                  },
                                );
                              default:
                                return const Center(
                                  child: Text("ابدأ الكتابة للبدئ بالبحث ..."),
                                );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

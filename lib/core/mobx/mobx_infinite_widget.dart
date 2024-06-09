import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infinite_search/core/mobx/mobx_pagination_store.dart';

class InfiniteWidget<T> extends StatelessWidget {
  final Widget Function(List<T> items)? onSuccessState;
  final Widget Function()? onEmptyState;
  final Widget Function()? onNoResultsState;
  final Widget Function()? onInitialLoadingState;
  final Widget Function(String error)? onScreamingErrorState;
  final PaginationStore<T> store;

  const InfiniteWidget({
    super.key,
    this.onSuccessState,
    this.onEmptyState,
    this.onNoResultsState,
    this.onInitialLoadingState,
    this.onScreamingErrorState,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final items = store.items;
        if (store.isEmpty) {
          return onEmptyState?.call() ?? const SizedBox();
        } else if (store.isInitialLoading) {
          return onInitialLoadingState?.call() ?? const SizedBox();
        } else if (store.noResultsFound) {
          return onNoResultsState?.call() ?? const SizedBox();
        } else if (store.showScreamingError) {
          return onScreamingErrorState?.call(store.error!) ?? const SizedBox();
        } else if (items.isNotEmpty) {
          return onSuccessState?.call(items) ?? const SizedBox();
        }
        return const SizedBox();
      },
    );
  }
}

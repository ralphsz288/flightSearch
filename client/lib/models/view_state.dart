import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<T> with _$ViewState<T> {
  const factory ViewState.loading() = ViewStateLoading<T>;

  const factory ViewState.completed(final T value) = ViewStateCompleted<T>;

  const factory ViewState.error() = ViewStateError<T>;

  const factory ViewState.ready() = ViewStateReady<T>;
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habitatu/core/models/failures.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.loading());
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success() = _Success;
  const factory HomeState.error(Failure failure) = _Error;
}

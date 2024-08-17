import 'package:bloc/bloc.dart';
import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'generalbooks_state.dart';

class GeneralbooksCubit extends Cubit<GeneralbooksState> {
  GeneralbooksCubit() : super(GeneralbooksInitial());
}

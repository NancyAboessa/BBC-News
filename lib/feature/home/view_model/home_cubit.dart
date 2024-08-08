import 'package:commingback/core/helper/dio_helper.dart';
import 'package:commingback/core/utls/end_point/end_points.dart';
import 'package:commingback/feature/home/model/news_model.dart';
import 'package:commingback/feature/home/view_model/home_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context)=> BlocProvider.of(context);
  NewsModel ?newsModel;
  Future<void>getNews()async{
    emit(GetNewsLoadingState());
    Response response= await DioHelper.getData(endPointUrl: EndPoints.topHeadLine,
    query:{
      "apiKey":"998eed629f3e43368a497fa0b88d1513",
      "sources":"bbc-news",},
    );
    if(response.statusCode==200){
     // debugPrint("${response.data}");
     newsModel=NewsModel.fromJson(response.data);
    emit(GetNewsSuccessState());
    }else
      {
        // debugPrint(response.data['status']);
        emit(GetNewsErrorState());
      }

  }
}

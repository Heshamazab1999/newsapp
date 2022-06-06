import 'package:newsapp/controller/base_controller.dart';
import 'package:newsapp/enum/view_state.dart';
import 'package:newsapp/model/new_model.dart';
import 'package:newsapp/services/get_new_services.dart';

class HomeController extends BaseController {
  final _services = GetArticleServices();
  NewsModel? newsModel;

  @override
  Future<void> onInit() async {
    // ignore: todo
    // TODO: implement onInit
    super.onInit();
    setSate(ViewState.busy);
    newsModel = await _services.getArticles();
    setSate(ViewState.idle);
  }
}

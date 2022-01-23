import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'articles_view_model.dart';

var newsProviders = ChangeNotifierProvider((ref)=>ArticlesViewModel());
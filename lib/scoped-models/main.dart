import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_tutorial_udemy/scoped-models/user.dart';
import 'package:flutter_tutorial_udemy/scoped-models/products.dart';

class MainModel extends Model with ProductsModel, UserModel {}

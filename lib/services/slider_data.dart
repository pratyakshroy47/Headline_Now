import 'package:newsapp/models/slider_model.dart';

List<sliderModel> getSliders() {

  List<sliderModel> slider = [];
  sliderModel categoryModel = new sliderModel();

  categoryModel.image = "images/business.jpg";
  categoryModel.name = "Bow to the Authority of Slienceforce";
  slider.add(categoryModel);
  categoryModel = new sliderModel();

  categoryModel.image = "images/business.jpg";
  categoryModel.name = "Bow to the Authority of Slienceforce";
  slider.add(categoryModel);
  categoryModel = new sliderModel();

  categoryModel.image = "images/business.jpg";
  categoryModel.name = "Bow to the Authority of Slienceforce";
  slider.add(categoryModel);
  categoryModel = new sliderModel();

  return slider;
}

import '../../../../../core/constants/constants.dart';
import '../../business/entities/template_entity.dart';

class TemplateModel extends TemplateEntity {
  const TemplateModel({
    required String template,
  }) : super(
          template: template,
        );

  factory TemplateModel.fromJson({required Map<String, dynamic> json}) {
    return TemplateModel(
      template: json[kPath],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      kPath: template,
    };
  }
}

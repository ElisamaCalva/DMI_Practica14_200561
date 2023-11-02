import 'package:movieapp_200561/model/Media.dart';
import 'package:movieapp_200561/common/Util.dart';
import 'package:movieapp_200561/common/MediaProvider.dart';

class Cast{
  int id;
  String name;
  String profilePath;

  String getCastUrl() => getMediumPictureUrl(profilePath);

  factory Cast(Map jsonMap, MediaType mediaType) {
    try {
      return new Cast.deserialize(jsonMap, mediaType);
    } catch (ex) {
      throw ex;
    }
  }

  Cast.deserialize(Map jsonMap, MediaType mediaType) :
  id = jsonMap["cast_id"].toInt(),
  name = jsonMap["name"],
  profilePath = jsonMap["profile_path"] ??  "assets/no.jpg";

}
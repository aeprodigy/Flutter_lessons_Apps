// ignore_for_file: constant_identifier_names

const String api_key =
    '5b3ce3597851110001cf6248a7fc5522e59946e8bda6602e145752a7';
const String baseUrl = 'https://api.openrouteservice.org/v2/directions/driving-car';
getRouteUrl(
  String startPoint,
  String endPoint,
) {
  return Uri.parse('$baseUrl?api_key=$api_key&start=$startPoint&end=$endPoint');
}

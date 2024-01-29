// ignore_for_file: public_member_api_docs, sort_constructors_first

// Project service path
enum ProductServicePath {
  popular('movie/popular');

  final String value;
  const ProductServicePath(this.value);

  String withQuery(String value) {
    return '${this.value}/$value';
  }
}

void main() {
  try {
    String str;
    str = 'hi';
    int x = int.parse(str);
    print(x);
  } on FormatException catch (e) {
    print('format exptn');
  } catch (e) {
    print(e);
  }
}

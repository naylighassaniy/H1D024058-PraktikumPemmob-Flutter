class Queue<T> {
  final List<T> _items = [];

  void enqueue(T element) {
    _items.add(element);
    print('[Enqueue] "$element" masuk ke dalam antrean.');
  }

  T? pop() {
    if (isEmpty) {
      print('[Peringatan] Antrean kosong! Tidak ada elemen yang dapat di-pop.');
      return null;
    }
    T removedItem = _items.removeAt(0);
    print('[Pop] "$removedItem" telah keluar dari antrean.');
    return removedItem;
  }

  T? peek() {
    if (isEmpty) return null;
    return _items.first;
  }

  bool get isEmpty => _items.isEmpty;

  int get length => _items.length;

  void display() {
    if (isEmpty) {
      print('Status Antrean: [KOSONG]');
    } else {
      print('Status Antrean (Depan -> Belakang): [ ${_items.join(' -> ')} ]');
    }
  }
}

void main() {
  print('=== SIMULASI STRUKTUR DATA QUEUE (DART) ===\n');

  Queue<String> antreanBank = Queue<String>();

  antreanBank.display();
  print('Apakah antrean kosong? ${antreanBank.isEmpty}\n');

  print('--- Memasukkan Elemen (Enqueue) ---');
  antreanBank.enqueue('Andi');
  antreanBank.enqueue('Budi');
  antreanBank.enqueue('Citra');
  antreanBank.enqueue('Dewi');

  print('');
  antreanBank.display();
  print('Jumlah orang dalam antrean: ${antreanBank.length}');
  print('Orang yang paling depan saat ini: ${antreanBank.peek()}\n');

  print('--- Mengeluarkan Elemen (Pop) ---');
  antreanBank.pop();
  antreanBank.display();
  print('');

  antreanBank.pop();
  antreanBank.display();
  print('');

  print('--- Menambah Elemen Baru ---');
  antreanBank.enqueue('Eko');
  antreanBank.display();
  print('');

  print('--- Melayani Sisa Antrean ---');
  antreanBank.pop();
  antreanBank.pop();
  antreanBank.pop();
  antreanBank.display();
  print('');

  print('--- Uji Coba Pop Saat Antrean Kosong ---');
  var hasil = antreanBank.pop();
  print('Nilai yang dihasilkan saat pop antrean kosong: $hasil');
}
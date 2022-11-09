## Tugas 7
**1. Perbedaan Stateless Widget dan Stateful Widget**
Stateless widget adalah widget yang sifatnya statis, dimana widget tersebut tidak akan berubah jika ada interaksi dengan user, contohnya adalah icon. Sedangkan Stateful widget adalah widget yang sifatnya dinamis, dimana ketika user melakukan interaksi dengan widget tersebut, maka akan terjadi perubahan pada widget tersebut, contohnya adalah Chekcbox.

**2. Widget yang digunakan**
- Appbar: digunakan sebagai menu penunjuk atau dapat menampilkan beberapa navigasi dari aplikasi.
- Icons
- Scaffold: widget utama untuk membuat sebuah halaman pada flutter.
- Container: berfungsi sebagai pembungkus widget-widget lainnya.
- Row, Column
- Text, TextStyle: menampilkan teks dengan style.
- FloatingActionButton: tombol icon mengambang berbentuk lingkaran yang berfungsi untuk melakukan tindakan atau menambahkan sesuatu pada halaman aplikasi.

**3. Fungsi setState()**
setState() berfungsi memberi tahu stateful widget bawhwa ada objek yang berubah pada state sehingga aplikasi membuat ulang widget tersebut dengan nilai state yang telah diubah.

**4. Perbedaan const dan final**
- Variabel yang menggunakan keyword final diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali. Dengan kata lain nilai final akan diketahui pada saat run-time. final dapat digunakan untuk deklarasi variabel immutable yang nilainya sudah ataupun belum diketahui pada saat waktu kompilasi berjalan.
- Variabel yang menggunakan variabel Const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi (Compile time) berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan value secara langsung.

**5. Implementasi Checklist**
1. Membuat program flutter baru dengan nama counter_7.
```
flutter create counter_7
cd counter_7
flutter run
```
2. Implementasi tombol + dan - serta warna counter pada ganjil dan genap
```
String _ganjilGenap(){
    if(_counter % 2 != 0){
      return "GANJIL";
    }
    else{
      return "GENAP";
    }
  }
}
```
```
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      if (_counter != 0) {
        _counter--;
      }
      else {
        return;
      }
    });
  }
```
```
Text(
  _ganjilGenap(),
  style: TextStyle(fontSize: 20, color: _ganjilGenap() == "GENAP" ? Colors.red : Colors.cyan),
),
Text(
    '$_counter',
    style: Theme.of(context).textTheme.headline4,
),
```
**BONUS**
3. Menyembunyikan/menghilangkan tombol - apabila counter bernilai 0.
Dengan menggunakan widget visibility
```
Visibility(
    visible: _counter <= 0 ? false : true,
    child: (
        FloatingActionButton(
            onPressed: _decrementCounter,
            child: Icon(Icons.remove),
        )
    )
),
```
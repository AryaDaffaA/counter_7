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

## Tugas 8

**1. Perbedaan Navigator.push dan Navigator.pushReplacement**
- Navigator.push(): Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
- Navigator.pushReplacement(): Metode pushReplacement digunakan untuk menambahkan rute lain ke atas stack saat ini dan menghapus rute sebelumnya setelah rute yang ditambahkan sudah ditampilkan.

**2. Widget yang digunakan pada aplikasi ini**
- Appbar: digunakan sebagai menu penunjuk atau dapat menampilkan beberapa navigasi dari aplikasi.
- Icons
- Scaffold: widget utama untuk membuat sebuah halaman pada flutter.
- Container: berfungsi sebagai pembungkus widget-widget lainnya.
- Row, Column
- Text, TextStyle, TextButton: menampilkan teks dengan style.
- FloatingActionButton: tombol icon mengambang berbentuk lingkaran yang berfungsi untuk melakukan tindakan atau menambahkan sesuatu pada halaman aplikasi.

**3. Jenis-jenis event yang ada pada Flutter**
- onPressed: memungkinkan user untuk meng-assign button dengan fungsi callback. Fungsi akan terpanggil ketika user menekan button yang di-assign fungsi tersebut.
- onClicked: terjadi ketika user meng-klik suatu objek pada aplikasi.
- onChanged: terjadi ketika suatu value berubah pada aplikasi.
- onSaved: terjadi ketika dilakukan penyimpanan dalam suatu tipe data, seperti variabel, atribut dll.
- onTap: memiliki fungsi yang mirip seperti onPressed namun aksi yang dilakukan adalah tap.

**4. Cara Navigator bekerja**
Navigator bekerja layaknya stack. Navigator menggunakan prinsip Last-In-First-Out*(LIFO). Method yang dapat digunakan adalah
- Navigator.push(): Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
- Navigator.pushReplacement(): Metode pushReplacement digunakan untuk menambahkan rute lain ke atas stack saat ini dan menghapus rute sebelumnya setelah rute yang ditambahkan sudah ditampilkan.


**5. Implementasi Tugas 8**
1. Membuat ke 3 halaman yaitu counter_7, Tambah Budget dan Data Budget
```
ListTile(
    leading: Icon(Icons.home),
    title: Text("counter_7"),
    onTap: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const counter7()),
      );
    },
  ),
  ListTile(
    leading: Icon(Icons.report),
    title: Text("Tambah Budget"),
    onTap: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AddBudgetPage()),
      );
    },
  ),
  ListTile(
    leading: Icon(Icons.settings),
    title: Text("Data Budget"),
    onTap: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BudgetDataPage()),
      );
    },
  ),
```
2. Menambahkan halaman form yang dibuat pada form.dart
- Judul:
```
decoration: InputDecoration(
    hintText: "Masukkan judul",
    labelText: "Judul",
    // Menambahkan icon agar lebih intuitif
    icon: const Icon(Icons.people),
    // Menambahkan circular border agar lebih rapi
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
    ),
),
// Menambahkan behavior saat nama diketik 
onChanged: (String? value) {
    setState(() {
        currentData.placeholderJudul = value!;
        // print(currentData._judul);
    });
},
```
- Nominal:
```
decoration: InputDecoration(
    hintText: "Masukkan Nominal",
    labelText: "Nominal",
    // Menambahkan icon agar lebih intuitif
    icon: const Icon(Icons.people),
    // Menambahkan circular border agar lebih rapi
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
    ),
),
// Menambahkan behavior saat nama diketik 
onChanged: (String? value) {
    setState(() {
        currentData.placeholderNominal = value!;
    });
},
```
- pilih jenis:
```
title: const Text(
    'Pilih Jenis',
),
trailing: DropdownButton(
    value: currentData.placeholderBudgeting,
    icon: const Icon(Icons.keyboard_arrow_down),
    items: currentData.jenisBudgeting.map((String items) {
    return DropdownMenuItem(
        value: items,
        child: Text(items),
    );
    }).toList(),
    onChanged: (String? newValue) {
    setState(() {
        currentData.placeholderBudgeting = newValue!;
    });
    },
),
```
- button untuk menyimpan budget:
TextButton(
    child: const Text(
      "Simpan",
      style: TextStyle(color: Colors.white),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.blue),
    ),
    onPressed: () {
      if (_formKey.currentState!.validate()) {
          currentData.addJudul(currentData.placeholderJudul);
          currentData.addNominal(currentData.placeholderNominal);
          currentData.addData(currentData.placeholderBudgeting);
            showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 15,
              child: Container(
                child: ListView(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  shrinkWrap: true,
                  children: <Widget>[
                    Center(child: const Text('Informasi Data')),
                    SizedBox(height: 20),
                    // TODO: Munculkan informasi yang didapat dari form
                    Text(
                      'Data Sudah Ditambahkan',
                      textAlign: TextAlign.center,
                      ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Kembali'),
                    ), 
                  ],
                ),
              ),
            );
          },
        );
      }
    }
  ),
```
3. Menambahkan halaman data budget
```
for (int i = 0; i < indexLength; i++) ListView(
  padding: const EdgeInsets.only(top: 20, bottom: 20),
  shrinkWrap: true,
  children: [
    SizedBox(height: 20),
    // TODO: Munculkan informasi yang didapat dari form
    Text( 
      judul[i],
      textAlign: TextAlign.left,
    ),
    Text(
      nominal[i],
      textAlign: TextAlign.left,
    ),
    Text(
      budgeting[i],
      textAlign: TextAlign.right,
    ),
  ],
),
```

## Tugas 9
**1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**
Bisa, namun tidak lebih baik jika dibandingkan dengan membuat model sebelum melakukan pengembalian data JSON. Caranya adalah dengan menggunakan library yang dimiliki dart yaitu convert.

**2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
- Appbar: digunakan sebagai menu penunjuk atau dapat menampilkan beberapa navigasi dari aplikasi.
- Icons
- Scaffold: widget utama untuk membuat sebuah halaman pada flutter.
- Container: berfungsi sebagai pembungkus widget-widget lainnya.
- Row, Column
- Text, TextStyle, TextButton: menampilkan teks dengan style.
- FloatingActionButton: tombol icon mengambang berbentuk lingkaran yang berfungsi untuk melakukan tindakan atau menambahkan sesuatu pada halaman aplikasi.
- FutureBuilder: digunakan untuk mengolah data hasil konversi dari json.

**3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.**
1. Melakukan fetch data dari web service dengan menggunakan dependensi http seperti POST, GET dll.
2. Membuat model dengan response data JSON.
3. Menambahkan dependensi HTTP
4. Menampilkan data ke aplikasi menggunakan FutureBuilder.

**4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**
1. Menambahkan tombol navigasi pada drawer/hamburger untuk ke halaman mywatchlist.
```
ListTile(
  leading: Icon(Icons.watch_later),
  title: Text("My Watchlist"),
  onTap: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const WatchList()),
    );
  },
),
```
2. Membuat satu file dart yang berisi model mywatchlist (mywatchlist.dart).
3. Menambahkan halaman mywatchlist yang berisi semua watch list yang ada pada endpoint JSON di Django yang telah kamu deploy ke Heroku sebelumnya.
- Fetch data json
```
Future<List<Mywatchlist>> fetchwatchlist() async {
  var url = Uri.parse(
      'https://tugas2-pbp-arya.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // decode the response into the json form
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // convert the json data into watchlist object
  List<Mywatchlist> listwatchlist = [];
  for (var d in data) {
    if (d != null) {
      listwatchlist.add(Mywatchlist.fromJson(d));
    }
  }
  return listwatchlist;
}
```
- Menampilkan data yang sudah di fetch pada web service
```
body: FutureBuilder(
  future: fetchwatchlist(),
  builder: (context, AsyncSnapshot snapshot) {
    if (snapshot.data == null) {
      return const Center(child: CircularProgressIndicator());
    } else {
      if (!snapshot.hasData) {
        return Column(
          children: const [
            Text(
              "My Watchlist is empty",
              style:
                  TextStyle(color: Color(0xff59A5D8), fontSize: 20),
            ),
            SizedBox(height: 8),
          ],
        );
      } else {
      return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (_, index) => Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 12),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black, blurRadius: 2.0)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Details._getFields = snapshot.data![index].fields;
                        print(Details.fetcher.toString());
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WatchListDetails()),
                        );
                      },
                      child: Text(
                      "${snapshot.data![index].fields.title}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                      )
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              )
            );
      }
    }
  }
)
```
**4. Menambahkan halaman detail untuk setiap mywatchlist yang ada pada daftar tersebut.**
```
Text(
  Details.fetcher.title,
  textAlign: TextAlign.center,
  style: const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
  ),
),
const SizedBox(height: 10),
Text("Release Date : " + Details.fetcher.releaseDate, style: const TextStyle(fontSize: 20)),  
Text("Rating : " + Details.fetcher.rating.toString(), style: const TextStyle(fontSize: 20)),
Text("Watched : " + Details.showStatus(), style: const TextStyle(fontSize: 20)),
Text("Review : " + Details.fetcher.review, style: const TextStyle(fontSize: 20)),
```
**5. Menambahkan tombol untuk kembali ke daftar mywatchlist**
```
FloatingActionButton(
  onPressed: () {
    Navigator.pop(context);
  },
  child: Text("Back", style: const TextStyle(fontSize: 14)),
)
```

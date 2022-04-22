# Gigih Family Catering

Merupakan tugas akhir Generasi Gigih 2 BE

## Deskripsi Program

Pak Gagah dan Bu Guguh adalah orang tua dari Gigih. Mereka menjalankan bisnis katering selama bertahun-tahun dan mencatat data-data bisnis mereka di sebuah buku kas. Sebagai seorang anak yang baik, Gigih ingin membantu orang tuanya dalam menjalankan bisnis mereka. Oleh karena itu, Gigih berencana membuatkan aplikasi untuk membantu pencatatan data bisnis katering orang tuanya.

Business process dari orang tua Gigih adalah sebagai berikut: setiap pagi, Pak Gagah dan Bu Guguh akan mengumumkan menu makanan dan harganya ke grup WhatsApp katering. Customer biasanya akan memesan melalui grup WhatsApp dan melakukan pembayaran melalui transfer bank. Jika customer belum membayar pesanan sampai jam 5 sore, customer dianggap membatalkan pesanan mereka. Setelah jam 5 sore, Pak Gagah dan Bu Guguh akan melihat daftar pesanan yang telah dibayar dan akan menyiapkan menu makanan untuk dikirim sesuai dengan pesanan. Selain itu, setiap harinya, Pak Gagah dan Bu Gigih juga akan melihat berapa total pendapatan mereka pada hari itu.

Gigih bekerja sebagai seorang project manager di sebuah perusahaan bernama The Eco Mews. Meski bisa membuat user story, Gigih tidak bisa membuat aplikasi yang diinginkannya sendiri. Oleh karena itu, Gigih membuat spesifikasi berikut untukmu agar kamu bisa membantunya membuat aplikasi berbasis API berikut.

## Instalasi

Install dan Gunakan Ruby 3.0.3

Clone repo dengan

```bash
git clone https://github.com/mizuday/gigih-family-catering.git
```

Jalankan command bundle untuk menginstall depedencies pada Gemfile dan tunggu beberapa saat
 
```bash
bundle
```

Inisiasi database

```bash
bundle exec rails db:create
bundle exec rails db:migration
```

Untuk mengisi DB dengan fake data lakukan:

- hapus line berikut pada file [/app/models/order.rb](/app/models/order.rb)

```ruby
    validates :order_details, presence: true
```

- Jalankan rails db:seed

```bash
bundle exec rails db:seed
```

## Running the app


### Replit
Simply hit run! You can edit the run command from the `.replit` file.

### Localhost
Jalankan rails s

```bash
bundle exec rails s
```

## Depedency

- Ruby

- Bundle

- [Gems](/Gemfile)

## About

- ID: KM_G2BE1161

- Nama: Juan

- [GitHub](https://github.com/mizuday)

- [Linkedin](linkedin.com/in/juan-louis-rombetasik/)
# NotPad — Workshop Invoice

Aplikasi nota pembayaran bengkel dengan Next.js App Router, TypeScript, Supabase, Tailwind CSS, Framer Motion, dan print stylesheet.

## Fitur
- Dashboard daftar nota, pencarian, ringkasan jumlah nota dan transaksi.
- Halaman awal kosong dengan tombol Buat Nota Baru.
- Pilihan ukuran A4, A5, Thermal 80mm, Thermal 58mm.
- Form bengkel, pelanggan, kendaraan, nomor nota, tanggal.
- Tabel barang/jasa dengan Qty, harga, subtotal otomatis.
- Diskon, total, uang dibayar, kembalian otomatis.
- Simpan, lihat preview, hapus, dan print nota.
- Responsive dan animasi transisi.

## Menjalankan
1. Install Node.js 20+.
2. `npm install`
3. Buat project Supabase.
4. Jalankan isi `supabase/schema.sql` di Supabase SQL Editor.
5. Salin `.env.example` menjadi `.env.local`, lalu isi URL dan anon key Supabase.
6. `npm run dev` lalu buka http://localhost:3000

## Catatan keamanan
Starter ini memakai kebijakan RLS terbuka untuk memudahkan uji coba single-workshop. Jangan gunakan kebijakan publik tersebut untuk aplikasi produksi yang terbuka ke internet. Tambahkan autentikasi dan policy berbasis user/workshop, atau pindahkan akses database ke server dengan service-role key yang disimpan hanya di server (jangan pernah memakai service-role key dengan prefix NEXT_PUBLIC).

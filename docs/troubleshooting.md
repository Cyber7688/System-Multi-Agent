# Troubleshooting

## 1. Gateway tidak bisa dibuka setelah edit config

Cek:
- format JSON valid atau tidak
- ada koma / kurung yang salah atau tidak
- path workspace benar atau tidak
- agent id bentrok atau tidak

Solusi:
- restore backup config
- restart gateway lagi

## 2. Agent tidak muncul di `openclaw agents list`

Cek:
- bagian `agents.list` benar atau tidak
- file config aktif benar atau tidak
- gateway sudah direstart atau belum

## 3. Telegram masih masuk ke main

Itu normal.

Kalau kamu belum menambah `bindings`, maka routing default tetap ke `main`.

## 4. Folder workspace tidak terbentuk

Jalankan ulang:

```bash
bash scripts/bootstrap.sh
```

## 5. Dashboard tidak bisa diakses dari komputer lain

Cek:
- service benar-benar jalan
- port kebuka atau tidak
- firewall VPS
- bind address service

## 6. Takut config rusak

Ini normal banget.

Selalu lakukan:

```bash
cp ~/.openclaw/openclaw.json ~/.openclaw/openclaw.json.bak
```

Kalau ada error, rollback dulu.

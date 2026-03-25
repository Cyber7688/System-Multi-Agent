# System Multi-Agent

Starter kit untuk membangun sistem multi-agent berbasis OpenClaw dengan konfigurasi yang lebih gampang dipahami publik.

Project ini ditujukan buat user yang masih awam atau semi-awam, tapi pengen punya setup multi-agent yang rapi, gampang dicopy, dan gampang dikembangin.

## Tujuan Project

Project ini membantu kamu untuk:
- bikin struktur agent `main`, `orchestrator`, `researcher`, dan `critic`
- pakai template konfigurasi OpenClaw multi-agent
- punya starter workspace yang siap pakai
- ngerti alur kerja multi-agent tanpa harus ngerakit semuanya dari nol

## Cocok Buat Siapa?

Repo ini cocok buat kamu kalau:
- baru mulai ngulik OpenClaw
- pengen setup multi-agent tanpa ribet dari nol
- ngerti dikit soal config, tapi masih gampang bingung kalau terlalu teknis
- pengen punya fondasi yang gampang dimodifikasi buat project sendiri

## Isi Repo

- `docs/quick-start.md` → panduan cepat
- `docs/installation.md` → langkah setup lebih detail
- `docs/architecture.md` → penjelasan peran tiap agent
- `docs/troubleshooting.md` → kalau ada error umum
- `templates/openclaw.multi-agent.example.json` → template config OpenClaw
- `workspace-starter/` → contoh struktur workspace agent
- `scripts/bootstrap.sh` → script bantu bootstrap folder awal

## Konsep Agent

Setup bawaan repo ini memakai 4 role:
- `main` → pintu masuk utama dari Telegram / chat user
- `orchestrator` → memecah task kompleks
- `researcher` → riset dan drafting
- `critic` → review, validasi, dan koreksi

## Quick Start

### 1. Clone repo

```bash
git clone https://github.com/Cyber7688/System-Multi-Agent.git
cd System-Multi-Agent
```

### 2. Jalankan bootstrap script

```bash
bash scripts/bootstrap.sh
```

Script ini akan bikin folder starter di workspace OpenClaw kamu.

### 3. Copy template config

```bash
cp templates/openclaw.multi-agent.example.json ~/.openclaw/openclaw.multi-agent.example.json
```

Lalu buka file itu dan sesuaikan path workspace kalau perlu.

### 4. Review config sebelum apply

Jangan langsung timpa `~/.openclaw/openclaw.json` tanpa backup.

Disarankan:
```bash
cp ~/.openclaw/openclaw.json ~/.openclaw/openclaw.json.bak
```

### 5. Apply manual dengan hati-hati

Gabungkan bagian `agents.list` dari template ke config aktif kamu.

### 6. Restart gateway

```bash
openclaw gateway restart
```

### 7. Verifikasi

```bash
openclaw agents list --bindings
openclaw status
```

## Kenapa nggak full auto?

Karena tiap setup OpenClaw bisa beda-beda. Token, channel, binding, dan workspace user bisa beda. Repo ini sengaja dibuat semi-manual tapi gampang dipahami supaya lebih aman buat publik.

## Rekomendasi Alur Pakai

- pakai `main` buat chat biasa
- pakai pola `orchestrator` untuk task kompleks
- gunakan `researcher` buat drafting dan eksplorasi ide
- gunakan `critic` buat quality check sebelum jawaban final

## File Penting

### Template config
Lihat:
- `templates/openclaw.multi-agent.example.json`

### Workspace starter
Lihat:
- `workspace-starter/orchestrator/SOUL.md`
- `workspace-starter/researcher/SOUL.md`
- `workspace-starter/critic/SOUL.md`

## Troubleshooting Cepat

Kalau gateway nggak bisa dibuka setelah edit config:
1. cek apakah JSON valid
2. cek path workspace benar
3. cek agent id nggak bentrok
4. restore backup config
5. restart gateway lagi

Detail lengkap ada di:
- `docs/troubleshooting.md`

## Roadmap V1

- starter template config
- starter workspace multi-agent
- dokumentasi awam-friendly
- bootstrap script sederhana

## Catatan Keamanan

- jangan hardcode token ke repo
- jangan commit secret
- selalu backup config sebelum apply perubahan
- kalau mau expose dashboard ke publik, pakai metode yang aman (mis. Tailscale / reverse proxy)

## Lisensi

Silakan pakai, modifikasi, dan kembangkan sesuai kebutuhan project kamu.

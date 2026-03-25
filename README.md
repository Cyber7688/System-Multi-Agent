# System Multi-Agent

Starter kit untuk membangun sistem multi-agent berbasis OpenClaw dengan setup yang lebih gampang dipahami publik.

Project ini dibuat buat user awam atau semi-awam yang pengen punya fondasi multi-agent tanpa harus nyusun semuanya dari nol.

## Kenapa Project Ini Ada?

Banyak orang tertarik bikin sistem multi-agent, tapi mentok di bagian konfigurasi:
- bingung soal `agents.list`
- takut edit `openclaw.json`
- nggak paham peran `orchestrator`, `researcher`, dan `critic`
- udah coba setup, tapi gateway malah error atau nggak kebuka

Repo ini hadir buat ngurangin ribet itu.

## Goal Utama

Repo ini bantu kamu untuk:
- punya struktur agent yang jelas
- mulai dari template config yang gampang dicopy
- punya starter workspace siap pakai
- ngerti alur kerja multi-agent dengan bahasa yang lebih manusiawi
- setup fondasi yang aman sebelum naik ke orchestration yang lebih advanced

## Cocok Buat Siapa?

Repo ini cocok buat kamu kalau:
- baru mulai ngulik OpenClaw
- pengen bikin sistem multi-agent tapi nggak mau kebanyakan trial-error
- masih awam, tapi ngerti dikit soal VPS / config / GitHub
- pengen repo starter yang bisa dikembangkan jadi project sendiri

## Fitur V1

- template konfigurasi multi-agent OpenClaw
- starter workspace untuk 4 role agent
- bootstrap script sederhana
- dokumentasi ramah pemula
- quick start, installation, architecture, dan troubleshooting docs

## Struktur Agent

Setup default repo ini memakai 4 role:

### `main`
Pintu masuk utama dari Telegram atau channel user.

### `orchestrator`
Agent koordinator yang memecah task kompleks dan mengarahkan agent lain.

### `researcher`
Agent yang fokus pada riset, drafting, dan eksplorasi solusi.

### `critic`
Agent yang fokus pada review, validasi, koreksi, dan quality control.

## Alur Kerja Singkat

```text
User -> main -> orchestrator -> researcher/critic -> orchestrator -> main -> user
```

## Isi Repo

- `docs/quick-start.md` → panduan mulai cepat
- `docs/installation.md` → langkah setup lebih detail
- `docs/architecture.md` → penjelasan peran tiap agent
- `docs/troubleshooting.md` → solusi error umum
- `docs/use-cases.md` → contoh penggunaan nyata
- `docs/roadmap.md` → arah pengembangan project
- `templates/openclaw.multi-agent.example.json` → template config
- `workspace-starter/` → starter folder agent
- `scripts/bootstrap.sh` → bootstrap folder workspace

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

Script ini akan membuat starter workspace di OpenClaw.

### 3. Copy template config

```bash
cp templates/openclaw.multi-agent.example.json ~/.openclaw/openclaw.multi-agent.example.json
```

### 4. Backup config aktif

```bash
cp ~/.openclaw/openclaw.json ~/.openclaw/openclaw.json.bak
```

### 5. Gabungkan config secara manual

Tambahkan `agents.list` dari template ke config aktif kamu dengan hati-hati.

### 6. Restart gateway

```bash
openclaw gateway restart
```

### 7. Verifikasi

```bash
openclaw agents list --bindings
openclaw status
```

## Checklist Setup

Sebelum bilang setup berhasil, cek ini dulu:

- [ ] folder `orchestrator`, `researcher`, `critic`, dan `shared` sudah ada
- [ ] file `SOUL.md` masing-masing agent sudah ada
- [ ] `agents.list` sudah masuk ke config aktif
- [ ] gateway berhasil restart
- [ ] `openclaw agents list --bindings` menampilkan semua agent
- [ ] `openclaw status` tetap sehat

## Kenapa Repo Ini Semi-Manual?

Karena setup OpenClaw tiap orang bisa beda-beda. Token, channel, binding, model, dan workspace sering tidak sama.

Kalau semuanya dipaksa otomatis dari awal, justru risiko error makin besar. Jadi repo ini sengaja dibuat:
- gampang dipahami
- gampang dimodifikasi
- lebih aman untuk publik

## Use Case yang Cocok

Contoh penggunaan repo ini:
- agent tim riset konten
- agent bantu drafting + review jawaban
- agent koordinasi workflow project
- fondasi AI team kecil untuk eksperimen multi-agent

Lihat detail di:
- `docs/use-cases.md`

## Troubleshooting Cepat

Kalau gateway gagal setelah edit config:
1. cek JSON valid atau nggak
2. cek path workspace benar atau nggak
3. cek agent id bentrok atau nggak
4. restore backup config
5. restart gateway lagi

Detail lengkap:
- `docs/troubleshooting.md`

## Rekomendasi Pengembangan Berikutnya

Kalau fondasi ini sudah jalan, next step yang bisa ditambah:
- preset config tambahan
- contoh binding per use case
- orchestration native pakai sub-agent
- contoh session delegation
- dashboard / observability guide

Lihat juga:
- `docs/roadmap.md`

## Catatan Keamanan

- jangan hardcode token ke repo
- jangan commit secret
- selalu backup config sebelum apply perubahan
- kalau mau expose dashboard ke publik, pakai metode aman seperti Tailscale, reverse proxy, atau SSH tunnel

## Lisensi

Silakan pakai, modifikasi, dan kembangkan sesuai kebutuhan project kamu.

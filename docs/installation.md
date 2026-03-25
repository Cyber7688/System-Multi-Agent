# Installation Guide

Panduan ini dibuat untuk user yang masih awam atau semi-awam.

## Prasyarat

Sebelum pakai repo ini, pastikan:
- OpenClaw sudah terinstall
- file config utama ada di `~/.openclaw/openclaw.json`
- gateway OpenClaw bisa jalan
- Node.js minimal versi 22 direkomendasikan

## Apa yang repo ini lakukan?

Repo ini tidak otomatis mengubah token atau channel kamu.

Repo ini hanya menyediakan:
- template konfigurasi
- struktur workspace starter
- file SOUL untuk tiap role agent
- script bantu bootstrap
- dokumentasi yang lebih gampang dipahami

## Langkah Instalasi

### 1. Clone repo

```bash
git clone https://github.com/Cyber7688/System-Multi-Agent.git
cd System-Multi-Agent
```

### 2. Jalankan bootstrap

```bash
bash scripts/bootstrap.sh
```

### 3. Cek hasil bootstrap

Setelah itu harusnya kamu punya folder:
- `~/.openclaw/workspace/orchestrator`
- `~/.openclaw/workspace/researcher`
- `~/.openclaw/workspace/critic`
- `~/.openclaw/workspace/shared`

### 4. Copy template config

```bash
cp templates/openclaw.multi-agent.example.json ~/.openclaw/openclaw.multi-agent.example.json
```

### 5. Backup config aktif

```bash
cp ~/.openclaw/openclaw.json ~/.openclaw/openclaw.json.bak
```

### 6. Edit config aktif dengan hati-hati

Yang biasanya perlu ditambahkan adalah bagian:
- `agents.list`

Kalau setup kamu sudah punya `agents.defaults`, jangan dihapus. Tinggal gabungkan.

### 7. Restart gateway

```bash
openclaw gateway restart
```

### 8. Verifikasi hasil

```bash
openclaw agents list --bindings
openclaw status
```

## Tips Penting

- jangan commit secret ke GitHub
- jangan langsung timpa config aktif tanpa backup
- kalau ada error, rollback dulu baru debug
- jangan ubah binding aktif kalau belum paham efeknya

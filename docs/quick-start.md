# Quick Start

Panduan cepat buat mulai pakai starter multi-agent ini.

## Step 1 — Clone repo

```bash
git clone https://github.com/Cyber7688/System-Multi-Agent.git
cd System-Multi-Agent
```

## Step 2 — Jalankan bootstrap script

```bash
bash scripts/bootstrap.sh
```

## Step 3 — Copy template config

```bash
cp templates/openclaw.multi-agent.example.json ~/.openclaw/openclaw.multi-agent.example.json
```

## Step 4 — Review config

Cek bagian berikut:
- path workspace
- agents.list
- jangan sentuh token kalau belum perlu

## Step 5 — Backup config aktif

```bash
cp ~/.openclaw/openclaw.json ~/.openclaw/openclaw.json.bak
```

## Step 6 — Apply manual

Gabungkan `agents.list` dari template ke config aktif kamu.

## Step 7 — Restart gateway

```bash
openclaw gateway restart
```

## Step 8 — Verifikasi

```bash
openclaw agents list --bindings
openclaw status
```

Kalau masih bingung, lanjut baca:
- `docs/installation.md`
- `docs/architecture.md`
- `docs/troubleshooting.md`

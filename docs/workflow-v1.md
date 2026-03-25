# Workflow V1 — Agent Saling Kerja

Dokumen ini menjelaskan cara bikin agent-agent di setup ini mulai terasa "hidup" dan bisa bekerja dalam pola tim.

## Tujuan Workflow V1

Workflow V1 bukan orchestration native penuh. Tapi ini adalah tahap penting supaya:
- ada trigger yang jelas
- ada urutan kerja yang jelas
- tiap role punya output yang konsisten
- user bisa ngetes mode multi-agent kapan saja

## Trigger V1

Gunakan salah satu keyword berikut saat memberi task:
- `pakai multi-agent`
- `mode orchestrator`
- `pakai workflow tim`
- `research + critic`

Contoh:

```text
Pakai multi-agent: bantu gue bikin arsitektur bot support yang rapi.
```

Atau:

```text
Mode orchestrator. Bedah ide project ini lalu kasih review plus saran perbaikan.
```

## Alur Kerja

```text
User -> main -> orchestrator -> researcher -> critic -> orchestrator -> main -> user
```

## Tugas Tiap Role

### main
- menerima task user
- menentukan apakah task biasa atau task multi-agent
- kalau trigger V1 muncul, aktifkan workflow tim
- kirim hasil final ke user

### orchestrator
- memahami objective
- memecah task menjadi beberapa bagian
- menentukan apa yang perlu diriset
- menentukan apa yang perlu divalidasi
- menggabungkan hasil researcher dan critic

### researcher
- fokus pada eksplorasi dan drafting
- menyusun bahan inti
- memberi opsi solusi
- menulis jawaban awal

### critic
- fokus pada quality control
- menandai bagian lemah
- mengoreksi miskonsepsi
- menyarankan perbaikan

## Format Output Standar

### Output Researcher

```markdown
## RESEARCHER
- Ringkasan masalah
- Analisis inti
- Opsi solusi
- Catatan / asumsi
```

### Output Critic

```markdown
## CRITIC
- GOOD:
- WEAK:
- NEEDS_IMPROVEMENT:
- RISK:
- Saran revisi:
```

### Output Orchestrator

```markdown
## ORCHESTRATOR
- Objective
- Strategi jawaban
- Sintesis hasil
- Final answer
```

## Kapan Workflow V1 Dipakai?

Cocok untuk task seperti:
- perencanaan project
- riset + review
- bandingkan beberapa opsi
- bikin arsitektur
- bedah prompt
- analisis ide bisnis / ide produk

## Kapan Tidak Perlu?

Tidak perlu kalau task-nya:
- tanya singkat
- jawaban sederhana
- percakapan ringan
- tidak butuh validasi atau pemecahan bertahap

## Kelebihan Workflow V1

- gampang dites
- gampang dipahami user awam
- belum butuh orchestration native yang rumit
- cukup kuat untuk membiasakan pola kerja multi-agent

## Kekurangannya

- belum benar-benar worker native yang berdiri sendiri
- masih berbasis pola kerja / disiplin eksekusi
- belum otomatis spawn session sendiri

## Langkah Berikutnya Setelah V1

Setelah user nyaman dengan V1, baru bisa naik ke:
- trigger heuristik otomatis
- native `sessions_spawn`
- worker agent beneran
- observability per session / per worker

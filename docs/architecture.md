# Architecture

## Gambaran Umum

Setup ini memakai 4 role utama:

### 1. main
Agent utama yang menerima chat user.

### 2. orchestrator
Agent koordinator yang bertugas memecah task kompleks.

Tanggung jawab:
- memahami objective
- membagi tahapan kerja
- mengarahkan researcher dan critic
- merangkum hasil akhir

### 3. researcher
Agent yang fokus pada:
- riset
- drafting jawaban
- eksplorasi ide atau opsi solusi

### 4. critic
Agent yang fokus pada:
- review kualitas
- validasi logika
- mencari kelemahan jawaban
- memberi koreksi dan saran perbaikan

## Alur Kerja

User -> main -> orchestrator -> researcher/critic -> orchestrator -> main -> user

## Kenapa model ini enak?

Karena task kompleks biasanya lebih rapi kalau dipisah jadi beberapa role.

Contoh:
- `researcher` fokus bikin bahan
- `critic` fokus cari kelemahan
- `orchestrator` fokus ngerapihin keputusan

## Catatan

Di OpenClaw, kamu bisa menjalankan pola ini secara:
1. konseptual / manual
2. semi-native
3. native pakai sub-agent

Repo ini fokus memberi fondasi yang gampang dipahami dulu.

# Trigger Guide

Agar workflow multi-agent bisa dipanggil dengan jelas, gunakan trigger berikut.

## Trigger yang didukung di V1

- `pakai multi-agent`
- `mode orchestrator`
- `pakai workflow tim`
- `research + critic`

## Contoh Penggunaan

### Contoh 1
```text
Pakai multi-agent: bantu gue bikin roadmap produk 3 bulan.
```

### Contoh 2
```text
Mode orchestrator. Bedah prompt ini dan kasih versi yang lebih rapi.
```

### Contoh 3
```text
Research + critic: jelaskan apakah arsitektur ini masuk akal untuk publik.
```

## Apa yang terjadi saat trigger dipakai?

Sistem akan menjalankan pola berikut:
1. `main` menerima task
2. `orchestrator` memecah objective
3. `researcher` menyusun analisis / draft
4. `critic` memeriksa kelemahan
5. `orchestrator` menyusun final answer
6. `main` mengirim hasil ke user

## Catatan

Trigger ini adalah tahap V1. Fokusnya adalah bikin pola multi-agent gampang diuji dan gampang dipahami dulu.

# Native Next Step

Setelah Workflow V1 stabil, langkah berikutnya adalah naik ke orchestration yang lebih native.

## Arah Pengembangan

### Tahap 1
Workflow manual-terstruktur:
- trigger keyword
- role-based execution
- hasil konsisten

### Tahap 2
Trigger heuristik:
- task kompleks otomatis masuk mode orchestrator
- task sederhana tetap dijawab langsung

### Tahap 3
Native orchestration:
- gunakan `sessions_spawn`
- worker dijalankan sebagai sub-agent
- hasil worker dikembalikan ke parent
- parent menyusun final answer

## Kenapa tidak langsung native?

Karena untuk user awam, langsung lompat ke orchestration native sering bikin bingung dan lebih sulit di-debug.

Workflow V1 dibangun supaya user bisa ngerti logika kerja tim dulu, baru lanjut ke otomasi yang lebih advanced.

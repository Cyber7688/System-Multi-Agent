#!/usr/bin/env bash
set -e

BASE="${HOME}/.openclaw/workspace"

echo "[1/4] Membuat folder agent..."
mkdir -p "$BASE/orchestrator" "$BASE/researcher" "$BASE/critic" "$BASE/shared"

echo "[2/4] Menyalin starter files..."
cp -f "workspace-starter/orchestrator/SOUL.md" "$BASE/orchestrator/SOUL.md"
cp -f "workspace-starter/researcher/SOUL.md" "$BASE/researcher/SOUL.md"
cp -f "workspace-starter/critic/SOUL.md" "$BASE/critic/SOUL.md"
cp -f "workspace-starter/shared/context.md" "$BASE/shared/context.md"
cp -f "workspace-starter/shared/results.md" "$BASE/shared/results.md"
cp -f "workspace-starter/shared/decisions.md" "$BASE/shared/decisions.md"

echo "[3/4] Selesai menyiapkan starter workspace."
echo "Workspace utama: $BASE"

echo "[4/4] Langkah berikutnya:"
echo "- copy templates/openclaw.multi-agent.example.json"
echo "- backup ~/.openclaw/openclaw.json"
echo "- gabungkan agents.list ke config aktif"
echo "- restart gateway dengan: openclaw gateway restart"

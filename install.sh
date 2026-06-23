#!/bin/bash
set -e

# Insper MLOps CLI Installer
# Usage: curl -fsSL https://raw.githubusercontent.com/centro-dados-ia/insper-mlops/main/install.sh | bash

REPO="Insper-CDIA-Pesquisa/insper-mlops-releases"
INSTALL_DIR="/usr/local/bin"
BINARY_NAME="mlops"

# Detect OS and architecture
OS="$(uname -s)"
ARCH="$(uname -m)"

case "$OS" in
    Linux)  OS_NAME="linux" ;;
    Darwin) OS_NAME="macos" ;;
    *)      echo "❌ Sistema operacional não suportado: $OS"; exit 1 ;;
esac

case "$ARCH" in
    x86_64)  ARCH_NAME="amd64" ;;
    amd64)   ARCH_NAME="amd64" ;;
    arm64)   ARCH_NAME="arm64" ;;
    aarch64) ARCH_NAME="arm64" ;;
    *)       echo "❌ Arquitetura não suportada: $ARCH"; exit 1 ;;
esac

# Linux only has amd64 build
if [ "$OS_NAME" = "linux" ] && [ "$ARCH_NAME" = "arm64" ]; then
    echo "❌ Linux arm64 não é suportado no momento."
    exit 1
fi

ASSET_NAME="mlops-${OS_NAME}-${ARCH_NAME}"

echo "🔍 Detectado: ${OS_NAME} ${ARCH_NAME}"
echo "📦 Buscando última versão do $REPO..."

# Get latest release tag
LATEST_TAG=$(curl -fsSL "https://api.github.com/repos/${REPO}/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')

if [ -z "$LATEST_TAG" ]; then
    echo "❌ Não foi possível encontrar a última versão."
    exit 1
fi

echo "📥 Baixando ${ASSET_NAME} (${LATEST_TAG})..."

DOWNLOAD_URL="https://github.com/${REPO}/releases/download/${LATEST_TAG}/${ASSET_NAME}"

# Download binary
TMP_FILE=$(mktemp)
curl -fsSL -o "$TMP_FILE" "$DOWNLOAD_URL"

# Install
chmod +x "$TMP_FILE"

if [ -w "$INSTALL_DIR" ]; then
    mv "$TMP_FILE" "${INSTALL_DIR}/${BINARY_NAME}"
else
    echo "🔐 Permissão necessária para instalar em ${INSTALL_DIR}"
    sudo mv "$TMP_FILE" "${INSTALL_DIR}/${BINARY_NAME}"
fi

echo ""
echo "✅ MLOps CLI instalado com sucesso!"
echo "   Versão: ${LATEST_TAG}"
echo "   Local:  ${INSTALL_DIR}/${BINARY_NAME}"
echo ""
echo "Execute 'mlops start' para começar."

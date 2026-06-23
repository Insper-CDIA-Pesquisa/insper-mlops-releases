# Insper MLOps CLI

Ferramenta de linha de comando para padronizar e automatizar projetos de MLOps no Insper CDIA.

## Instalação

> **Nenhuma das opções abaixo requer Python instalado** (exceto a via pip).

### macOS / Linux (recomendado)

```bash
curl -fsSL https://raw.githubusercontent.com/Insper-CDIA-Pesquisa/insper-mlops-releases/main/install.sh | bash
```

### macOS (Homebrew)

```bash
brew tap Insper-CDIA-Pesquisa/mlops https://github.com/Insper-CDIA-Pesquisa/insper-mlops-releases.git
brew install mlops
```

### Windows

1. Baixe `mlops-windows-amd64.exe` da [última release](https://github.com/Insper-CDIA-Pesquisa/insper-mlops-releases/releases/latest)
2. Renomeie para `mlops.exe`
3. Mova para uma pasta no PATH (ex: `C:\Users\SeuUsuario\bin\`)
4. Execute `mlops start` no terminal

### Via pip (alternativa — requer Python)

```bash
pip install insper-mlops
```

## Pré-requisito

O [GitHub CLI (gh)](https://cli.github.com/) deve estar instalado para autenticação.

## Uso

```bash
mlops start
```

O comando interativo guia você na criação de um novo projeto MLOps.

## Desinstalar

```bash
sudo rm /usr/local/bin/mlops
```

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

### Windows (PowerShell como Administrador)

```powershell
Invoke-WebRequest -Uri "https://github.com/Insper-CDIA-Pesquisa/insper-mlops-releases/releases/latest/download/mlops-windows-amd64.exe" -OutFile "C:\Windows\mlops.exe"
```

Depois feche e reabra o terminal.

## Pré-requisitos

- [Git](https://git-scm.com/download/win) — necessário para clonar templates
- [GitHub CLI (gh)](https://cli.github.com/) — necessário para autenticação

> **Windows:** instale ambos com `winget install Git.Git` e `winget install GitHub.cli`

## Uso

```bash
mlops start
```

O comando interativo guia você na criação de um novo projeto MLOps.


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

### Windows (PowerShell)

```powershell
Invoke-WebRequest -Uri "https://github.com/Insper-CDIA-Pesquisa/insper-mlops-releases/releases/latest/download/mlops-windows-amd64.exe" -OutFile "$env:LOCALAPPDATA\mlops.exe"
$path = [Environment]::GetEnvironmentVariable("Path", "User")
if ($path -notlike "*$env:LOCALAPPDATA*") { [Environment]::SetEnvironmentVariable("Path", "$path;$env:LOCALAPPDATA", "User") }
```

Depois feche e reabra o terminal.

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

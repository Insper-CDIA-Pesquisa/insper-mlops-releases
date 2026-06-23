# Insper MLOps CLI

Ferramenta de linha de comando para padronizar e automatizar projetos de MLOps no Insper CDIA.

## Instalação

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

Baixe o executável da [última release](https://github.com/Insper-CDIA-Pesquisa/insper-mlops-releases/releases/latest) e adicione ao PATH.

### Via pip (requer Python)

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

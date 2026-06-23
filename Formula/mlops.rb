class Mlops < Formula
  desc "CLI para padronizar projetos de MLOps no Insper CDIA"
  homepage "https://github.com/Insper-CDIA-Pesquisa/insper-mlops-releases"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Insper-CDIA-Pesquisa/insper-mlops-releases/releases/download/v#{version}/mlops-macos-arm64"
      sha256 "PLACEHOLDER_ARM64"

      def install
        bin.install "mlops-macos-arm64" => "mlops"
      end
    else
      url "https://github.com/Insper-CDIA-Pesquisa/insper-mlops-releases/releases/download/v#{version}/mlops-macos-amd64"
      sha256 "PLACEHOLDER_AMD64"

      def install
        bin.install "mlops-macos-amd64" => "mlops"
      end
    end
  end

  on_linux do
      url "https://github.com/Insper-CDIA-Pesquisa/insper-mlops-releases/releases/download/v#{version}/mlops-linux-amd64"
    sha256 "PLACEHOLDER_LINUX"

    def install
      bin.install "mlops-linux-amd64" => "mlops"
    end
  end

  test do
    assert_match "Insper MLOps CLI", shell_output("#{bin}/mlops --help")
  end
end

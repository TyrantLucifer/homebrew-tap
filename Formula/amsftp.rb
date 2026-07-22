class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.12/amsftp_0.1.12_darwin_arm64.tar.gz"
      sha256 "710d3bf6e0057e1202fc6663976bceccf04c7a84de04fc090288dd0ee40ff3ee"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.12/amsftp_0.1.12_darwin_amd64.tar.gz"
      sha256 "7d7f30123b8575883128164c01c8a35a4e1d9922f0e8622964321563a3365553"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.12/amsftp_0.1.12_linux_arm64.tar.gz"
      sha256 "74d397367b4bf22ccede165388068b2edfa8497611ff29bfcbad9530e0fc6448"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.12/amsftp_0.1.12_linux_amd64.tar.gz"
      sha256 "90d47c3753052d7b4ab70e222a5b35e0ffadcfbc84f0db5eec5a7af51d77ffdd"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.12", shell_output("#{bin}/amsftp --version")
  end
end

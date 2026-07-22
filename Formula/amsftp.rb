class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.10/amsftp_0.1.10_darwin_arm64.tar.gz"
      sha256 "008f4d75931ae08c2bd1f43c7b520916920c475f5dfe5f6ab9ddf1da10fb7c89"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.10/amsftp_0.1.10_darwin_amd64.tar.gz"
      sha256 "a6c45fbcc54204acbbe01f9887e05abb905ab59ddd33d725116e4017c034779e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.10/amsftp_0.1.10_linux_arm64.tar.gz"
      sha256 "4e6538204f49a83edb091e589dc1236bcda969aba39e524858bcee02ca943b3d"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.10/amsftp_0.1.10_linux_amd64.tar.gz"
      sha256 "d4446d9f075f1f4f9c44933a69cc57197dabcc9ce83de2e277eed6b8969104be"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.10", shell_output("#{bin}/amsftp --version")
  end
end

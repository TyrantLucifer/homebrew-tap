class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.25"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.25/amsftp_0.1.25_darwin_arm64.tar.gz"
      sha256 "fc23a3d5de0fa1ada8c0ec513cd3e29a4346ac60f891005a0178b86349265425"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.25/amsftp_0.1.25_darwin_amd64.tar.gz"
      sha256 "4ef3a2791796fc1a65485903397dbd32e1f88c9bc7185d67a7b6c1786e4dc466"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.25/amsftp_0.1.25_linux_arm64.tar.gz"
      sha256 "62e10449efe6437b9a6f63c9b92cd6a6fb2ba33bf6e8833ead3aa518fb0ebfae"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.25/amsftp_0.1.25_linux_amd64.tar.gz"
      sha256 "bc6d560d5fd775d516d66876322f12ec8310396be16ef1d9fb4752c916176629"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.25", shell_output("#{bin}/amsftp --version")
  end
end

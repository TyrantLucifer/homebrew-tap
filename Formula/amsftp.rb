class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.13/amsftp_0.1.13_darwin_arm64.tar.gz"
      sha256 "40ec7487d147411a3a9db97a69c4d6546395111fd31a8f987f396e1d1173cad2"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.13/amsftp_0.1.13_darwin_amd64.tar.gz"
      sha256 "579e072bc54d4ce17c287ec8551b7cb5ef0bb59b81750d397cb3e752ae14e375"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.13/amsftp_0.1.13_linux_arm64.tar.gz"
      sha256 "22208fec88f3ceb5736990580f71d44854c07bbe81140a937c80582f4d21f9e4"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.13/amsftp_0.1.13_linux_amd64.tar.gz"
      sha256 "de7369879e6c8910080fd96e6455e4f1ddf1edab9bfdc0d53422de54a2762359"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.13", shell_output("#{bin}/amsftp --version")
  end
end

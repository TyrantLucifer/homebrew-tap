class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.23"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.23/amsftp_0.1.23_darwin_arm64.tar.gz"
      sha256 "9b7de6e882eedee1129ff1284e9b22fdfb89df5542de648b245198dd4d327e76"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.23/amsftp_0.1.23_darwin_amd64.tar.gz"
      sha256 "96e46f92be2cbc3a0514c973ca1668b08b64b71ae647f5d8d91e20a8c2c95885"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.23/amsftp_0.1.23_linux_arm64.tar.gz"
      sha256 "840edc8789913e5490e45fabd81b175242f28f1c6ed90d0755857f3558b57dd2"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.23/amsftp_0.1.23_linux_amd64.tar.gz"
      sha256 "a983b1cd8bdd2d07678721bf0a8c44bdea09fc0c8ce70578fb3a11885ad6a5cd"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.23", shell_output("#{bin}/amsftp --version")
  end
end

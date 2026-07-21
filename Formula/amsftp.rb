class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.3/amsftp_0.1.3_darwin_arm64.tar.gz"
      sha256 "f006de5608f4b1a8ee7cfe2f6c335678308e09c39cad172f72f151666aae25e5"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.3/amsftp_0.1.3_darwin_amd64.tar.gz"
      sha256 "dfd8b5f700207473cf4b92d430130d51c0d14500da4f035add792b71439ae549"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.3/amsftp_0.1.3_linux_arm64.tar.gz"
      sha256 "adf1107a0687475b4c03801fbe7fa453e803a95290263924f678750b7b648771"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.3/amsftp_0.1.3_linux_amd64.tar.gz"
      sha256 "49961ce93a12f6492f3396003927e0bb559e780778fbc58d7d5a894c58a6e9be"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/amsftp --version")
  end
end

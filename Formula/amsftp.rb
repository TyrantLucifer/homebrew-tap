class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.20"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.20/amsftp_0.1.20_darwin_arm64.tar.gz"
      sha256 "f0c13bb2416aff639266caf7a625c05b2acce9dd23cf586647150db519de65f3"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.20/amsftp_0.1.20_darwin_amd64.tar.gz"
      sha256 "f1f7679b1a835afcbe7ca23a9d320f6bd5798ab42878f5aba5c478d9938ee507"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.20/amsftp_0.1.20_linux_arm64.tar.gz"
      sha256 "4ccb5838f87a352aa998b0c4d9f8c378e0bfd910874a23bd930062ff326dba12"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.20/amsftp_0.1.20_linux_amd64.tar.gz"
      sha256 "9691918b6b7bac6aca0d647ef15169781b8a8189ca7d79649f221df2584f4e2d"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.20", shell_output("#{bin}/amsftp --version")
  end
end

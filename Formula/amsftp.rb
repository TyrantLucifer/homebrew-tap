class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.7/amsftp_0.1.7_darwin_arm64.tar.gz"
      sha256 "e7c303d6aafd6f6ad628c70945aa5f393f1b46ac5df2b5e06c3d31bdc390b263"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.7/amsftp_0.1.7_darwin_amd64.tar.gz"
      sha256 "9fb26f8a81d3529e344b2ae50310e4f1ba104d41eb614ef9db92608995044c8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.7/amsftp_0.1.7_linux_arm64.tar.gz"
      sha256 "b1f3152deb88be2dcc79af889b43ae88ae4904f682f8a8672946ec21021928cb"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.7/amsftp_0.1.7_linux_amd64.tar.gz"
      sha256 "bc3f75c35380d0019e324afb386a3ffd16b781a4c268258a5d774b2c4cca0d90"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.7", shell_output("#{bin}/amsftp --version")
  end
end

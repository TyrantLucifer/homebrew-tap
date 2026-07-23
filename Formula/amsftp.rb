class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.14/amsftp_0.1.14_darwin_arm64.tar.gz"
      sha256 "32f7d3685d44e12dce4fb08274d53616b58f9a2e733b62911f0630f28bae1c91"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.14/amsftp_0.1.14_darwin_amd64.tar.gz"
      sha256 "40988911a22da05f8daf588b5acd2e19eb5f754cfa4284d9eac92d5c374b3b4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.14/amsftp_0.1.14_linux_arm64.tar.gz"
      sha256 "3f4c4a09259bea8568030729a01d3c8e2fc7dc749b478a3108359f895b04c679"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.14/amsftp_0.1.14_linux_amd64.tar.gz"
      sha256 "930ebf6b6b365e023b68dd69520e7d344db2af93e76417a7f3280e20136de2d1"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.14", shell_output("#{bin}/amsftp --version")
  end
end

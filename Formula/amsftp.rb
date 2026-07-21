class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.6/amsftp_0.1.6_darwin_arm64.tar.gz"
      sha256 "b515749cae63d2498897f6d002792104185cd968f72200a2135a303b2a2a0b8a"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.6/amsftp_0.1.6_darwin_amd64.tar.gz"
      sha256 "47f03967210da55081ccf8fafd56025baba97ecc7241fe64a9e1f1f98a8f6738"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.6/amsftp_0.1.6_linux_arm64.tar.gz"
      sha256 "80410c8a31bd8ecc7e4f969defec9729b50fbb36ec7678784a71589c3c0e2245"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.6/amsftp_0.1.6_linux_amd64.tar.gz"
      sha256 "8d5d018d5bb342d2ff05bc4e8ea283b13660fccee410c98a4f630f57d89761a7"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.6", shell_output("#{bin}/amsftp --version")
  end
end

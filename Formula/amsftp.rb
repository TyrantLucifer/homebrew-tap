class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.0/amsftp_0.1.0_darwin_arm64.tar.gz"
      sha256 "07cdd8b5f2d499a1b429f69b9c8d0cf7e7eb6f7885d81a4aa65e91e34df8b1f6"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.0/amsftp_0.1.0_darwin_amd64.tar.gz"
      sha256 "15eaff50cf35878c00aabb9e85d3894f4171e048c8a3702821059707844f1e54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.0/amsftp_0.1.0_linux_arm64.tar.gz"
      sha256 "44d7a08def239a83062dac3ad04172caa95bb6d4d084e93d8815f11a1499e2ef"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.0/amsftp_0.1.0_linux_amd64.tar.gz"
      sha256 "da4a99c3c5ae7774cea8a6bcd1641cba77a55b27f52d998ce8178123ecf2ab3b"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/amsftp --version")
  end
end

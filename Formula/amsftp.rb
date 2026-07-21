class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.4/amsftp_0.1.4_darwin_arm64.tar.gz"
      sha256 "4b9b57ef6a4bef784a0f96b55f766c3d7da539b13cf2bd8e8ea0722fd8df69d6"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.4/amsftp_0.1.4_darwin_amd64.tar.gz"
      sha256 "8e3b225cdd0cfe847f210a383e054548250b77a7b290d4d4eb1f504c9cb62408"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.4/amsftp_0.1.4_linux_arm64.tar.gz"
      sha256 "9dc33b16a655cdc7c5a774e6fa05f79cae74b7b26945755c2e7422d694386c12"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.4/amsftp_0.1.4_linux_amd64.tar.gz"
      sha256 "bf3ace6e872e35556798a0bb5f9a78727a3abafc51adcf6875b773502fdb7c41"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.4", shell_output("#{bin}/amsftp --version")
  end
end

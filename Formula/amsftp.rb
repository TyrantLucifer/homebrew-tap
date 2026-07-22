class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.11/amsftp_0.1.11_darwin_arm64.tar.gz"
      sha256 "b6ffde35b800aa45fb1db47a4c185fbb2a3e18f689a185df41934aa15a0e3234"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.11/amsftp_0.1.11_darwin_amd64.tar.gz"
      sha256 "5b38cc2bb044b72b3e607a40ea53716c2d2492e88bdc7f815499a4b16e62c990"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.11/amsftp_0.1.11_linux_arm64.tar.gz"
      sha256 "324a98992925e04b1f8f13f08b5a1fa17a854015c0f1d5dccc7d17a153634f4f"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.11/amsftp_0.1.11_linux_amd64.tar.gz"
      sha256 "5616dd6d89d0c4a2a9dae57d679d56dcd6c901c130bc4144efad64a2ec7ac9f0"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.11", shell_output("#{bin}/amsftp --version")
  end
end

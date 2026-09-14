class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.24"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.24/amsftp_0.1.24_darwin_arm64.tar.gz"
      sha256 "d66c7c8b9d3d9969f876d6452e59c2d4f16117f8f3cd255bc8aa57e3cb787398"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.24/amsftp_0.1.24_darwin_amd64.tar.gz"
      sha256 "a4f090b8ab435fb8bb05a0263aac3d1f1d33d81886d1eb6e3567bb0c144d4e0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.24/amsftp_0.1.24_linux_arm64.tar.gz"
      sha256 "eeea4f7d227f5cab4d6a38c7b05cd3fff9f02d6cc792c65783405e8eb27d2ad1"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.24/amsftp_0.1.24_linux_amd64.tar.gz"
      sha256 "8c6f81c3d81cca295a0fa3579092e635298a3cec117c46c892fccd5db83e20e6"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.24", shell_output("#{bin}/amsftp --version")
  end
end

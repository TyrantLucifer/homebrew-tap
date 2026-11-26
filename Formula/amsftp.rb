class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.26"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.26/amsftp_0.1.26_darwin_arm64.tar.gz"
      sha256 "9b5cffec6f49f6990ec3e0328f943ee0e9b7ae29bc28ed20d554fa756594af59"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.26/amsftp_0.1.26_darwin_amd64.tar.gz"
      sha256 "061c1676e7aa9a5f29f21ca74997ce65ed7669bcdf45dd8180f7ba6e3e786134"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.26/amsftp_0.1.26_linux_arm64.tar.gz"
      sha256 "b44c94cd35c24e762bd5f1aabc4ae1a03d7c11178673e43d52615affe6ca4bc8"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.26/amsftp_0.1.26_linux_amd64.tar.gz"
      sha256 "3be464b4b251d7a09f13602bf3794054932bc6b7d1d4bfa6103367694bd4a905"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.26", shell_output("#{bin}/amsftp --version")
  end
end

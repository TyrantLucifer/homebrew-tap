class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.2/amsftp_0.1.2_darwin_arm64.tar.gz"
      sha256 "05ade1b29ae589960ac64c5b71217e6e51f8c17ab326e7e94dfdbfb64b5a0032"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.2/amsftp_0.1.2_darwin_amd64.tar.gz"
      sha256 "fab1e423e381a5c015e0ba320ef6d9867e8d4c3ee30dd373591e019dfeff0aea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.2/amsftp_0.1.2_linux_arm64.tar.gz"
      sha256 "e36ecd0199f5553ff31f5e0c62eeee42fd587bb15faf0bdd379dd088b9e1eb26"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.2/amsftp_0.1.2_linux_amd64.tar.gz"
      sha256 "79a7245887b81737d606d38f1457558747604530b7fe409ac64f361983fa27c9"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/amsftp --version")
  end
end

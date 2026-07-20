class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.1/amsftp_0.1.1_darwin_arm64.tar.gz"
      sha256 "267c04f2eb141827ff52b8c510a6272b1a8f71079553dab9f309f39c8b9b9c00"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.1/amsftp_0.1.1_darwin_amd64.tar.gz"
      sha256 "59b621a4af667e6c7cdc34780ac7c380c4602da85711482d3572e55870e693ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.1/amsftp_0.1.1_linux_arm64.tar.gz"
      sha256 "8079d0f459e397a56c111dd90beda53efa787784bb57489fffe90e02fdb77fdf"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.1/amsftp_0.1.1_linux_amd64.tar.gz"
      sha256 "1380ba2743edda3937b7348d428e08a4aa9c2169de134afbfbf37cb5673096b8"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/amsftp --version")
  end
end

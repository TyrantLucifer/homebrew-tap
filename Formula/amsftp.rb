class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.17/amsftp_0.1.17_darwin_arm64.tar.gz"
      sha256 "8183a018e91a64c5df475c74a56df43875d60f8275322f65799d89004cebaac1"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.17/amsftp_0.1.17_darwin_amd64.tar.gz"
      sha256 "e7b639ac02bf2de6f5ff781bc5b052243c625e99590182a6139ae47540be0e30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.17/amsftp_0.1.17_linux_arm64.tar.gz"
      sha256 "3e6e6331a9b7e90e0aa926add3f5ce2818d0c276b66b8e5aff7f975387719a93"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.17/amsftp_0.1.17_linux_amd64.tar.gz"
      sha256 "12493f6399679954d5655006d62a09012f45ae9c9b07477c905fa8a44a3f2763"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.17", shell_output("#{bin}/amsftp --version")
  end
end

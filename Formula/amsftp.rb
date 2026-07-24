class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.19"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.19/amsftp_0.1.19_darwin_arm64.tar.gz"
      sha256 "3dd404aa0e9a14e950b8a9322968ebf5eab14dd2586fd681a9e09c7465d55f15"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.19/amsftp_0.1.19_darwin_amd64.tar.gz"
      sha256 "741b691efe1e1caf093baabd22253e1bc9015b17af4ef125c7aaf2824198ff41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.19/amsftp_0.1.19_linux_arm64.tar.gz"
      sha256 "b60105cb977ce32d141f4307a61eed83b0639da54cac289b536e449596c26627"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.19/amsftp_0.1.19_linux_amd64.tar.gz"
      sha256 "44697e2077932ad0fa1b93197d5d0ede2ecba44607c51c850e8e7be102851887"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.19", shell_output("#{bin}/amsftp --version")
  end
end

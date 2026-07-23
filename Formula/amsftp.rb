class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.16/amsftp_0.1.16_darwin_arm64.tar.gz"
      sha256 "9cc6662f2dc38eee517b4f10bd116661aefa6d3f6f6aa93bca44ebc17d190d66"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.16/amsftp_0.1.16_darwin_amd64.tar.gz"
      sha256 "2718e51a803fa3def842f78581566b635e498caaccd575e658736b665128eb88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.16/amsftp_0.1.16_linux_arm64.tar.gz"
      sha256 "c6661322221413d30cde59fdd692b2bde226a47e7d54c2d49f4c0e28213c59fb"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.16/amsftp_0.1.16_linux_amd64.tar.gz"
      sha256 "89de8f85edf930509fe5c21c802a47dd41030fdd0889b7f697496e209680a9c7"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.16", shell_output("#{bin}/amsftp --version")
  end
end

class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.8/amsftp_0.1.8_darwin_arm64.tar.gz"
      sha256 "038942c55d65735d7636a38f35c94b1cd5285a66fd6a89d21055cfce84785255"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.8/amsftp_0.1.8_darwin_amd64.tar.gz"
      sha256 "f1ac8e8699287519b0a0dec036cfb47841f5b2b9afdb43a10a979b1f20f2e4e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.8/amsftp_0.1.8_linux_arm64.tar.gz"
      sha256 "f1e7b44887252cbfb9e2da1e78949d82298f9b138a05c2c9b94d2880e72eb690"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.8/amsftp_0.1.8_linux_amd64.tar.gz"
      sha256 "9a1f366e669e920bf0f2ab355aefc3394f137649933cf162093bcd6a9fd66b07"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.8", shell_output("#{bin}/amsftp --version")
  end
end

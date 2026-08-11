class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.21"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.21/amsftp_0.1.21_darwin_arm64.tar.gz"
      sha256 "9d599c9a80ca0b73ea5e310aa0a3a5a4ef9d7691d7bbc151996786f7ecebcede"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.21/amsftp_0.1.21_darwin_amd64.tar.gz"
      sha256 "b5e748b21afdfba0ede17738c1994d3071f7bc1a0ac3fbf517b14cd35ad0d21b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.21/amsftp_0.1.21_linux_arm64.tar.gz"
      sha256 "22c2eed29ac6b0c8dd5dc4e654977b6ce266b02d8f16d9d8ccd42454874f9c48"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.21/amsftp_0.1.21_linux_amd64.tar.gz"
      sha256 "ddfb93652da0ad2d40db7141beb5c40410485eaa61ea1c2ba3dd9524322f6e99"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.21", shell_output("#{bin}/amsftp --version")
  end
end

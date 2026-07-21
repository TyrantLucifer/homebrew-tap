class Amsftp < Formula
  desc "Vim-first two-pane SFTP file manager"
  homepage "https://github.com/TyrantLucifer/awesome-sftp-cli"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.5/amsftp_0.1.5_darwin_arm64.tar.gz"
      sha256 "fcf42300f5f8cef606050d008bc89401f6b5aec0656d2d977e9200507fe6f703"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.5/amsftp_0.1.5_darwin_amd64.tar.gz"
      sha256 "6c216c6109612815d196c3b281fd880fff33982f9eda83d15cc329301313a370"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.5/amsftp_0.1.5_linux_arm64.tar.gz"
      sha256 "660ba9dc66116091b99b2d430b8ccb677a41f439722c725d2777de5f74fae0a8"
    end
    on_intel do
      url "https://github.com/TyrantLucifer/awesome-sftp-cli/releases/download/v0.1.5/amsftp_0.1.5_linux_amd64.tar.gz"
      sha256 "8019f15d6f598f112b9a73efe67548b724abd4cdd9e681859997b73706b6fc04"
    end
  end

  def install
    bin.install "amsftp"
    man1.install "share/man/man1/amsftp.1"
    generate_completions_from_executable(bin/"amsftp", "completion")
  end

  test do
    assert_match "0.1.5", shell_output("#{bin}/amsftp --version")
  end
end

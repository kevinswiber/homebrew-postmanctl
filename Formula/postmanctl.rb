# This file was generated by GoReleaser. DO NOT EDIT.
class Postmanctl < Formula
  desc ""
  homepage "https://github.com/kevinswiber/postmanctl"
  version "1.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kevinswiber/postmanctl/releases/download/v1.1.5/postmanctl_1.1.5_Darwin_x86_64.tar.gz"
    sha256 "c1945778781bb0389a05018d5617bcc024835a9357e6930585afa645a3dea21f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kevinswiber/postmanctl/releases/download/v1.1.5/postmanctl_1.1.5_Linux_x86_64.tar.gz"
      sha256 "7fec73836f53fb568bcb60819fcf67d007f50bc6618301a6cbc92995e1e83e03"
    end
  end
  
  head do
    url "https://github.com/kevinswiber/postmanctl.git"
    depends_on "go"
  end

  def install
    if head?
      system "go", "build", "./cmd/postmanctl"
    end
    
    bin.install "postmanctl"
  end
end

# This file was generated by GoReleaser. DO NOT EDIT.
class Postmanctl < Formula
  desc ""
  homepage "https://github.com/kevinswiber/postmanctl"
  version "1.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kevinswiber/postmanctl/releases/download/v1.1.0/postmanctl_1.1.0_Darwin_x86_64.tar.gz"
    sha256 "f5002aebb11fd23ff58622a873c01cc4afd65cb7fad0a5565598fb26ea2974db"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kevinswiber/postmanctl/releases/download/v1.1.0/postmanctl_1.1.0_Linux_x86_64.tar.gz"
      sha256 "20b74180fad9d869f6c2e0a703dc2acbc70524ea08e9aa3bad5476fe2ca3afd8"
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

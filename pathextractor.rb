class Pathextractor < Formula
  desc "PathExtractor is a command line tool that extracts a list of files/paths from stdin."
  homepage "https://github.com/edi9999/path-extractor"
  head "https://github.com/edi9999/path-extractor.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    path = buildpath/"github.com/edi9999/path-extractor"
    path.install Dir["*"]
    cd path do
      system "go", "build", "-o", "#{bin}/pe"
    end
  end

end

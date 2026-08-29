class Playwright < Formula
  desc "Automated browser testing for the modern web"
  homepage "https://playwright.dev/"
  url "https://registry.npmjs.org/playwright/-/playwright-1.62.1.tgz"
  sha256 "1982556a882b246ccb7c16337fab5e4e790292b69f835a2db1011dddc440ed98"
  license "Apache-2.0"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "Playwright", shell_output("#{bin}/playwright --help")
  end
end

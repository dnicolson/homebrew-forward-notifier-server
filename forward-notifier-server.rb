class ForwardNotifierServer < Formula
  desc "Forward your notifications from your iOS device to your PC/iOS device!"
  homepage "https://github.com/Greg0109/ForwardNotifier"
  url "https://raw.githubusercontent.com/Greg0109/ForwardNotifier/master/ForwardNotifier%20Client%20Tools/Crossplatform%20Server/ForwardNotifierServer.py"
  sha256 "2ab5bbaf1515172a43cb7e4ccf6c0cfb1e010a7998c556b2b2d7aabdfea090f2"
  version "1.0.4"

  def install
    bin.install "ForwardNotifierServer.py"
  end

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
        <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>python</string>
        <string>#{bin}/ForwardNotifierServer.py</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <true/>
    </dict>
    </plist>
    EOS
  end
end

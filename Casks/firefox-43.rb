cask 'firefox-43' do
  version '43.0.1'
  sha256 '4e14ecf74467f5227a1c15e56705b4b954a90d443dfba696f9dd908478e39dea'

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/en-GB/Firefox%20#{version}.dmg"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/'

  app 'Firefox.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/firefox_*',
               '~/Library/Application Support/Firefox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*',
               '~/Library/Caches/Firefox',
               '~/Library/Caches/Mozilla/updates/Applications/Firefox',
               '~/Library/Preferences/org.mozilla.firefox.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Mozilla', #  May also contain non-Firefox data
               '~/Library/Caches/Mozilla/updates/Applications',
               '~/Library/Caches/Mozilla/updates',
               '~/Library/Caches/Mozilla',
             ]
end

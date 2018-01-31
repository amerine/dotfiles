bork_any_updated=0
# Save dialogs
ok defaults NSGlobalDomain NSNavPanelExpandedStateForSaveMode bool true
ok defaults NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 bool true

# Print
ok defaults NSGlobalDomain PMPrintingExpandedStateForPrint bool true
ok defaults NSGlobalDomain PMPrintingExpandedStateForPrint2 bool true

# Speed things up
ok defaults NSGlobalDomain NSAutomaticWindowAnimationsEnabled bool false
ok defaults NSGlobalDomain NSWindowResizeTime string .001

# Show File Extensions
ok defaults NSGlobalDomain AppleShowAllExtensions bool true

# Docks Settings
ok defaults com.apple.dock autohide bool true
ok defaults com.apple.dock workspaces-swoosh-animation-off bool true
ok defaults com.apple.dock orientation string "left"
ok defaults com.apple.dock mineffect string "scale"
ok defaults com.apple.dock autohide-delay float 0
ok defaults com.apple.dock autohide-time-modifier float 0
ok defaults com.apple.dock no-bouncing int 0
ok defaults com.apple.dock launchanim bool false

# Mission Control
ok defaults com.apple.dock mru-spaces bool false

ok check "ls -lO ~ | grep Library"
if check_failed && satisfying; then
  chflags nohidden ~/Library
fi


# Safari

# Prevent Safari from opening ‘safe’ files automatically after downloading
ok defaults com.apple.Safari AutoOpenSafeDownloads bool false

# Hide Safari’s bookmarks bar by default
ok defaults com.apple.Safari ShowFavoritesBar bool false

# Hide Safari’s sidebar in Top Sites
ok defaults com.apple.Safari ShowSidebarInTopSites bool false

# Enable Safari’s debug menu
ok defaults com.apple.Safari IncludeInternalDebugMenu bool true

# Make Safari’s search banners default to Contains instead of Starts With
ok defaults com.apple.Safari FindOnPageMatchesWordStartsOnly bool false

# Enable the Develop menu and the Web Inspector in Safari
ok defaults com.apple.Safari IncludeDevelopMenu bool true
ok defaults com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey bool true
ok defaults com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled bool true

# Add a context menu item for showing the Web Inspector in web views
ok defaults NSGlobalDomain WebKitDeveloperExtras bool true

# Enable continuous spellchecking
ok defaults com.apple.Safari WebContinuousSpellCheckingEnabled bool true
# Disable auto-correct
ok defaults com.apple.Safari WebAutomaticSpellingCorrectionEnabled bool false

# Warn about fraudulent websites
ok defaults com.apple.Safari WarnAboutFraudulentWebsites bool true

# Enable “Do Not Track”
ok defaults com.apple.Safari SendDoNotTrackHTTPHeader bool true

# Update extensions automatically
ok defaults com.apple.Safari InstallExtensionUpdatesAutomatically bool true

if any_updated; then
  killall Dock
  killall Finder
fi
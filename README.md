git pull upstream master
# pulled from repo with new Ruby version set
rbenv install 2.5.0
#=> ruby-build: definition not found: 2.5.0
#
# The following versions contain `2.5.0' in the name:
#  2.5.0-dev
#  rbx-2.5.0
#
# See all available versions with `rbenv install --list'.
#
# If the version you need is missing, try upgrading ruby-build:
#
# brew update && brew upgrade ruby-build
brew update && brew upgrade ruby-build
#=> completed with no errors
rbenv install 2.5.0
#=> Installed ruby-2.5.0
rbenv global 2.5.0
# set Ruby version for the whole machine
ruby -v
#=> ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin16]
bundle install
#=> rbenv: bundle install: command not found

# The `bundle install' command exists in these Ruby versions:
#  2.3.4
gem install bundler
# 1 gem installed
bundle
# install all gems to new Ruby version needed
#!/usr/bin/env ruby
#
# drakensang.rb - by:proxlu

unless File.exist?("#{ENV['HOME']}/.wine/drive_c/Program Files (x86)/Drakensang Online/thinclient.exe")
  system('wget -P /tmp https://github.com/proxlu/drakensang-linux/raw/main/dro_setup.exe')
  system('wine /tmp/dro_setup.exe')
end

unless File.exist?("#{ENV['HOME']}/.wine/drive_c/Program Files (x86)/Drakensang Online/extramaus")
  system('wget -P /tmp https://github.com/proxlu/drakensang-linux/raw/main/extramaus.c')
  system('gcc /tmp/extramaus.c -o ~/.wine/drive_c/Program\ Files\ \(x86\)/Drakensang\ Online/extramaus -lX11 -lXext -g')
end

system('~/.wine/drive_c/Program\ Files\ \(x86\)/Drakensang\ Online/extramaus&wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Drakensang\ Online/thinclient.exe&&kill $!')

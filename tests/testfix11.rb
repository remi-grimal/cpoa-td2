# -*- coding: utf-8 -*-
# usage: ruby checkfix#.rb [file]
# -------------------
# Author::    Jean-Michel Bruel  (mailto:jbruel@gmail.com) 
# Copyright:: Copyright (c) 2020 JMB
# License::   Distributes under the same terms as Ruby
# -------------------


fixNb = __FILE__.scan(/\d+/)
print "----------------------------------\n"
print "Looking for fix #" + fixNb[0] + " rules...\n"

result = system("mvn install")
if result
  print "SUCCESS: You're ready for fix #" + fixNb[0] + "\n"
else 
  print "/!\\FAILURE: Your tests seem to still have failure\n"
  exit 1
end


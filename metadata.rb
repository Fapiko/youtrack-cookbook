name             "youtrack"
maintainer       "Lucas Jandrew"
maintainer_email "lucas@jandrew.com"
license          "Apache 2.0"
description      "Installs/Configures youtrack"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.0.1'

depends 'tomcat'

#!/usr/bin/env ruby

# Copyright:
#   (c) 2008 Redline Software Inc.
#   http://redlinesoftware.com
# Author: Marc Jeanson (marc@redlinesoftware.com)
# Description:
#   Provides multiple version support for the Ruby on Rails bundle. 

# Makes use of TextMate's project variables
# From the online help: http://macromates.com/textmate/manual/environment_variables
# 9.4 Project Dependent Variables
# Sometimes it is useful to have a command customized differently depending on the project. For this reason, it is possible to set variables for individual projects.
# The way to do this is currently a little secret but if you deselect everything in the project drawer, then click the info (circled I) button, a panel will appear where you can set variables.
# These variables are saved in the project file (*.tmproj) and will exist only for snippets and (shell) commands executed in the context of that project.

class Version
  
  # Rails 2.x uses html.erb for template names, but some of us still have to work with Rails 1.x and .rhtml. 
  def self.view_file_extension
    case ENV["TM_RAILS_VERSION"].to_i
    when 1
      ".rhtml"
    else
      ".html.erb"
    end
  end
  
end
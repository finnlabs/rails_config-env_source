# Rails Config Environment Source

# Copyright (C)2014 Finn GmbH

# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License version 3.

# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

# See doc/GPL.txt.

require 'rails_config/sources/env_source'

module RailsConfig
  module Sources
    ##
    # Loads settings from environment variables that need to have multiple lines.
    #
    # Based on ENVSource.
    #
    # This config source replaces dots (.) in values with newlines.
    #
    class MultilineEnvSource < EnvSource
      def get_value(value)
        value.gsub('.', "\n")
      end
    end
  end
end

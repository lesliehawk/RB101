# Down the Rabbit Hole

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file.

# Standard Library -> YAML
# YAML -> no load_file, but says the underlying implementation for 
# the YAML module is the libyaml wrapper Psych.
# Standard Library -> psych
# Psych
# load_file(filename, fallback: false)
# Load the document contained in filename. 
# Returns the yaml contained in filename as a Ruby object, 
# or if the file is empty, it returns the specified default return value, 
# which defaults to an empty Hash.

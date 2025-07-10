# _plugins/build.rb
require 'time'
require 'jekyll'

module Jekyll
  class ExtBuildInfoGenerator < Generator
    safe true
    priority :highest

    def generate(site)
      # Change this line:
      # It now points to the project root, not inside 'resources'
      build_number_file_path = File.join(site.dest, 'version.txt') # Target the destination for persistence
      # Or, if you want it to be *always* in the source root:
      # build_number_file_path = File.join(site.source, 'version.txt')

      # Let's use site.source to keep the original file in the source directory and prevent accidental deletion
      # during clean builds. Since it's excluded, Jekyll won't watch it.
      build_number_file_path = File.join(site.source, 'version.txt')

      current_incremental_number = 0

      begin
        if File.exist?(build_number_file_path)
          current_incremental_number = File.read(build_number_file_path).to_i
        end
      rescue => e
        Jekyll.logger.error "BuildInfo Error:", "Failed to read version.txt from root: #{e.message}. Using 0."
        current_incremental_number = 0
      end

      current_incremental_number += 1

      # We can simplify the write logic now, as the file is excluded from watching.
      # It will write every time the plugin runs, but Jekyll won't re-trigger *itself* because of this file.
      begin
        File.write(build_number_file_path, current_incremental_number.to_s)
        Jekyll.logger.info "BuildInfo Version 0.1:", "A Ruby plugin for LexSite's build number generation."
        Jekyll.logger.info "", "Copyright (C) 2025 Lexibyte"
        Jekyll.logger.info "BuildInfo:", "Incremental build number persisted to disk (root): #{current_incremental_number}"
      rescue => e
        Jekyll.logger.error "BuildInfo Error:", "Failed to write version.txt to root: #{e.message}. Build number not persisted."
      end


      timestamp = Time.now.strftime("%y%m%d-%H%M")

      site.config['ext_build_info'] = {
        'major' => 0,
        'minor' => 1,
        'patch' => current_incremental_number,
        'timestamp' => timestamp
      }

      Jekyll.logger.info "BuildInfo:", "Ext Build Info loaded into site.config: #{site.config['ext_build_info'].inspect}"
    end
  end
end
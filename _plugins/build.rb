# _plugins/build.rb
require 'time'
require 'jekyll'

module Jekyll
  class ExtBuildInfoGenerator < Generator
    safe true
    priority :highest # Ensure it runs early

    def generate(site)
      Jekyll.logger.info "BuildInfo:", "Plugin 'ExtBuildInfoGenerator' started."

      # The build_patch_number will now be directly passed from the GitHub Action
      # based on the incremented value read/written by the workflow script itself.
      build_patch_number = ENV['JEKYLL_BUILD_NUMBER']
      if build_patch_number.nil? || build_patch_number.empty?
        # Fallback for local development if running `jekyll serve` directly without setting ENV
        build_patch_number = Time.now.strftime("%s") # Unix timestamp
        Jekyll.logger.info "BuildInfo:", "Using local fallback for patch number (ENV['JEKYLL_BUILD_NUMBER'] not set): #{build_patch_number}"
      else
        Jekyll.logger.info "BuildInfo:", "Using GitHub Actions provided patch number: #{build_patch_number}"
      end
      
      # Ensure it's an integer for the final output
      build_patch_number = build_patch_number.to_i 

      # --- FOR GLOBAL_BUILD_TIMESTAMP ---
      # Set the timezone to Tegucigalpa (America/Tegucigalpa), which is UTC-06:00 (CST)
      utc_now = Time.now.utc
      cst_offset_seconds = -6 * 3600
      cst_time = utc_now + cst_offset_seconds
      timestamp = cst_time.strftime("%y%m%d-%H%M")
      Jekyll.logger.info "BuildInfo:", "Generated timestamp: #{timestamp} (CST)"

      # --- INJECTING DATA ---
      # Create or access the 'build_info' hash under site.data
      site.data['ext_build_info'] = {
        'major' => 0,
        'minor' => 1,
        'patch' => build_patch_number,
        'timestamp' => timestamp
      }

      Jekyll.logger.info "BuildInfo:", "Ext Build Info loaded into site.data: #{site.data['ext_build_info'].inspect}"
    end
  end
end
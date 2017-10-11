# desc "Copy umeditor to the Rails `public/umeditor` directory"
# task :umeditor do
#   require 'umeditor-rails'
#
#   target = "#{Rake.original_dir}/public/umeditor"
#
#   mkdir_p "#{target}"
#
#   files = Dir.glob("#{Umeditor::Rails.umeditor_path}/")
#   FileUtils.cp_r files, "#{target}"
#
# end


namespace :umeditor do
  desc "copy umeditor into public folder"
  task :assets do
    puts "copying umeditor into public/assets folder ..."
    dest_path = "#{Rails.root}/public/assets"
    FileUtils.mkdir_p dest_path
    FileUtils.cp_r "#{Umeditor::Rails::Engine.root}/vendor/assets/javascripts/umeditor/", dest_path
  end
end
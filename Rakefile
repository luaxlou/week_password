task :default => [:compress]

task :compress do
  ruby "compress.rb"
end

task :md5 do
  ruby "gen_md5.rb"
  Rake::Task["compress"].invoke
end
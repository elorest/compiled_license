licenses = String.build do |s|
  if File.exists?("./LICENSE")
    s.puts Dir.current.split("/").last.capitalize
    s.puts "================================================================================"
    s.puts File.read("./LICENSE")
    s.puts "================================================================================"
    s.puts "\n\n"
  end

  Dir.glob("./lib/*/LICENSE", "./lib/*/license").each do |path|
    s.puts path.match(/^\.\/lib\/([^\/]+)\//).try(&.[1]).to_s.capitalize
    s.puts "================================================================================"
    s.puts File.read(path)
    s.puts "================================================================================"
    s.puts "\n\n"
  end
end

puts licenses

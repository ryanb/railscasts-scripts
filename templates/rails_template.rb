def template(from, to = nil)
  to ||= from
  remove_file to
  file to, File.read(File.expand_path("../#{from}", __FILE__))
end

remove_file "app/assets/images/rails.png"
remove_file "public/index.html"
remove_file "README.rdoc"
template "README.md"
template "layout.css.scss", "app/assets/stylesheets/layout.css.scss"
template "application.html.erb", "app/views/layouts/application.html.erb"

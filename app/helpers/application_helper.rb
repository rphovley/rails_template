module ApplicationHelper
  def current_page path, className
    (current_page?(path))? className : ""
  end

  def embedded_svg filename, options = {}
    root = options[:root] || Rails.root.join("app", "assets", "svgs")
    file = File.read(File.join(root, filename))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    svg['class'] = options[:class] if options[:class].present?
    doc.to_html.html_safe
  end

  def is_admin(user)
    user.roles.include?(:admin)
  end
end

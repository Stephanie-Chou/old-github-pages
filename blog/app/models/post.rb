
class Post < ActiveRecord::Base
	def renderMarkdown
		renderer = Redcarpet::Render::HTML.new()
		markdown = Redcarpet::Markdown.new(renderer)
		file = "../blog/app/assets/markdown/#{self.title}"
		markdown.render(File.read(file))


	end
end

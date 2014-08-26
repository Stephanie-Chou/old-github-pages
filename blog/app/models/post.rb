class Post < ActiveRecord::Base
	def renderMarkdown
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, fenced_code_blocks: true, prettify: true)
		file = File.open("../blog/app/assets/markdown/#{self.title}",'r').read
		markdown.render(file)
	end
end

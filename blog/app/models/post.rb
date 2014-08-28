require 'github/markup'
class Post < ActiveRecord::Base
	def renderMarkdown
		renderer = Redcarpet::Render::HTML.new(prettyprint: true)
		markdown = Redcarpet::Markdown.new(renderer, fenced_code_blocks: true, disable_indented_code_blocks: true, highlight: true, quote: true)
		file = "../blog/app/assets/markdown/#{self.file}"
		markdown.render(File.read(file))
		# GitHub::Markup.render("test.markdown",File.read(file))
		# GitHub::Markup.render("something.markdown", "* something == highlight ==")
	end

	def self.findMarkdowns
		posts = []
		Post.all.each do | post |
			posts << {post: post, file: post.renderMarkdown}
		end
		p posts.last
		posts
	end
end

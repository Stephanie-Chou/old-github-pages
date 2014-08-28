# TDD: test driven development
Ensures that there is no untested code

## Live Code!

### first test	
```lang-ruby
class Cookie
	attr_reader :type, :time_baked
	def initialize (type)
		@type = type
	end
end
```

```
describe Cookie do
	it 'has a type' do
		cookie = Cookie.new('peanut butter')
		expect(cookie.type).to eq ('peanut butter')
	end
end
```
* bullet point?
<div class="flex-video widescreen">
<iframe width="420" height="315" src="//www.youtube.com/embed/-sSyakmt_LU" frameborder="0" allowfullscreen></iframe>
</div>
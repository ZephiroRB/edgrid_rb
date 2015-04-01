module MyEdgridHelper
	["hd","web","tablet","movil"].each do |device|
		1.upto(20) do |val|
			new_val = val * 5
			define_method("#{device}_#{new_val}") do |args = {}, &block|
				args[:class] = args.has_key?(:class) ? "#{args[:class]} caja #{device}-#{new_val}" : "caja #{device}-#{new_val}"
				attrs = args.map {|k,v| "#{k}='#{v}' " }.join(" ")
				html= "<div #{attrs}>"
				html+= capture(&block)
				html+= "</div>"
				html.html_safe
			end
		end
	end
end
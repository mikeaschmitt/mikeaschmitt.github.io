class Posttoblog

def blogpost( title, content, image )
    
    # puts "What is the title of your post?"
    # title = gets.chomp
    # puts "What is the link of your image?"
    # image = gets.chomp
    # puts "What is the content of your post?"
    # content = gets.chomp
    
    if !File.exist?('blog.html')
        filecontent = "<!DOCTYPE html>\n<html>\n<head>\n<title>Mike's Blog</title>\n</head>\n<body>\n</body>\n</html>"
        file = File.new("blog.html", "w")
        file.puts(filecontent)
        file.close
    end
        added = "<h3>" + title + "</h3>\n"
        added += "<img src=\"" + image + "\" height=200px />"
        added += "<p>" + content + "</p>\n"
        added += "<hr/>\n"
        added += "</body>\n"
        added += "</html>\n"  
    template = File.open('blog.html', 'rb')
    template = template.read[0..-17]
    template += added
    File.delete('blog.html')
    file = File.new('blog.html', 'w')
    file.puts(template)
    file.close
    
end

end


    
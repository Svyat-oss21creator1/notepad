class Link < Post
    def initialize
        super

        @url = ''        
    end
    def read_from_console
        puts "Adress of link:"
        @url = STDIN.gets.chomp

        puts "What kind of link?"
        @text = STDIN.gets.chomp
        
    end
    def to_strings
        time_string = "Created :#{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
        return [@url, @text, time_string]
         
    end

end
require 'date'
class Task < Post
    def initialize
        super        
        @due_date = Time.now
    end

    def read_from_console
        puts "What do you need to do?"
        @text = STDIN.gets.chomp
        puts "To what date? Write date in format date, month, year"
        input = STDIN.gets.chomp
        @due_date = Date.parse(input)
        
    end

    def to_strings
        time_string = "Created :#{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
        deadline = "deadline: #{@due_date}"
        return [deadline, @text, time_string]
        
    end
end
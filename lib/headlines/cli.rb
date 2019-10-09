class Headlines::CLI
    
    def call
        list_sources
        menu
        goodbye
    end

    def list_sources
        puts "Which source would you like to use?"
        @sources = Headlines::Source.sources
        @sources.each.with_index(1) { |source, i| puts "#{i} - #{source.name}"}
    end 


    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the source to see the web address and headlines or enter 'exit' to exit."
            input = gets.strip

        if input.to_i > 0
            chosen_source = @sources[input.to_i-1]
            divider
            puts "#{chosen_source.name}"
            puts "#{chosen_source.url}"
            divider
            puts "1. #{chosen_source.headline1}"
            puts "2. #{chosen_source.headline2}"
            divider
            list_headlines(input.to_i-1)
        elsif input == "back"
            list_sources
        elsif input == "exit"
            nil
        else
            puts "Not a valid command. Please enter 'sources' to see the list of sources."
            end
        end
    end

    def list_headlines(user_input)
        input = nil
        while input != "back"
            puts "Enter the number of the headline for the web address or enter 'back' to see the sources again."
            input = gets.strip
                if input.to_i ==  1
                    selected_source = @sources[user_input]
                    divider
                    puts "#{selected_source.name}"
                    puts "#{selected_source.headline1}"
                    puts "#{selected_source.headline1_url}"
                    divider
                elsif input.to_i == 2
                    selected_source = @sources[user_input]
                    divider
                    puts "#{selected_source.name}"
                    puts "#{selected_source.headline2}"
                    puts "#{selected_source.headline2_url}"
                    divider
                elsif input == "back"
                    nil
                else
                    puts "Not a valid command."
                end  
            end
            list_sources
        end

    def divider
            puts "*************************"
    end

    def goodbye
        puts "Come back tomorrow for more headlines!"
    end

end
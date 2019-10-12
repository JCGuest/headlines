class Headlines::CLI
    
    def call
        list_sources
        menu
        goodbye
    end

    def list_sources
        puts ""
        puts "Which source would you like to use?"
        puts ""
        @sources = Headlines::Source.all
        @sources.each.with_index(1) { |source, i| puts "#{i} - #{source.name}"}
        puts ""
    end 


    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the source to see the web address and headlines or enter 'exit' to exit."
            puts ""
            input = gets.strip

        if input.to_i > 0
            selected_source = @sources[input.to_i-1]
            divider
            puts "#{selected_source.name}"
            puts "#{selected_source.url}"
            divider
            selected_source.headlines_ary.each.with_index(1) { |headline,i| puts "#{i} - #{headline}" }
            list_headlines_info(input.to_i-1)
        elsif input == "back"
            list_sources
        elsif input == "exit"
            nil
        else
            puts "Not a valid command. Please enter 'sources' to see the list of sources."
            puts ""
            end
        end 
    end

    def list_headlines_info(user_input)
        input = nil
        while input != "back"
            puts "Enter the number of the headline for the web address or enter 'back' to see the sources again."
            puts ""
            input = gets.strip

                # if input.to_i > 0
                #     selected_source = @sources[user_input]
                #     puts "#{selected_source.name}"
                #     selected_source.headlines_ary.each do |h|
                #         puts "#{h[input.to_i-1]}"
                #     end
                #     selected_source.url_ary.each do |url|
                #         puts "#{url[input.to_i-1]}"
                #     end

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
                    puts ""
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
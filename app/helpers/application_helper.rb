module ApplicationHelper

    # Display proper title on page
    def full_title(page_title = ' ')
        base_title = "RoR Sample App"
        if page_title.empty?
            base_title
        else
           page_title + ' | ' + base_title
        end
    end

end #ENDMODULE

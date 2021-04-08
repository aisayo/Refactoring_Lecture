module CoffeeOrdersHelper


    def coffee_sizes 

       if @coffee_order.size == "Small"
            content_tag(:h5, "#{@coffee_order.size}")
        elsif @coffee_order.size == "Medium"
            content_tag(:h3, "#{@coffee_order.size}")
        else
            content_tag(:h1, "#{@coffee_order.size}")
        end
        
    end

end

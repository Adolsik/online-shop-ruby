module CurrentCart

private

def set_cart

    @koszyk = Koszyk.find(session[:koszyk_id])

rescue ActiveRecord::RecordNotFound

    @koszyk = Koszyk.create
    session[:koszyk_id] = @koszyk.id

end



end
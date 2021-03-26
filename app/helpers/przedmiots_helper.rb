module PrzedmiotsHelper


def przedmiot_author(przedmiot)
user_signed_in? && current_user.id == przedmiot.user_id
end

end

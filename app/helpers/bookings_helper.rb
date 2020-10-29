module BookingsHelper
    def no_of_days(check_in,check_out)
        (check_out-check_in).to_i
    end
end

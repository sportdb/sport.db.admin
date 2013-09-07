module SportDbAdmin
module FormatHelper


  def fmt_date_with_week( date )
    if date.nil?
      '-'
    else
      ##  e.g. 2012 (Week 22) // Oct/21 Fri
      date.strftime( "%Y (Week %V) // %b/%d %a" )
    end
  end


  def fmt_quote( num )
    if num >= 10
      "%3.0f" % num
    else
      "%3.2f" % num
    end
  end


end # module FormatHelper
end # module SportDbAdmin

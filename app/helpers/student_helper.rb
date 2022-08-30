module StudentHelper

  def toastr_flash
    flash.each_with_object([]) do |(type, message), flash_messages|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert'
      text = "<script>toastr.#{type}('#{message}', '', { closeButton: true, progressBar: true, timeOut: 2500 })</script>"
      flash_messages << text.html_safe if message
    end.join("\n").html_safe
  end

  def gender
    [['Male', 'M'], ['Female', 'F'], ['Other', 'O']]
  end

  def blood_groups
    [['A+', 'a_pos'], ['A-', 'a_neg'], ['B+', 'b_pos'], ['B-', 'b_neg'], ['O+', 'o_pos'],
    ['O-', 'o_neg'], ['AB+', 'ab_pos'], ['AB-', 'ab_neg']]
  end

  def active_url url
    if current_page?(url)
      'side-nav-active-link'
    end
  end
end

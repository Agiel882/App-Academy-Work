module ApplicationHelper
    def auth_token
    authstr = <<-AUTH
        <input
        type="hidden"
        name="authenticity_token"
        value="#{form_authenticity_token}"
        />
    AUTH
    authstr.html_safe
    end
end

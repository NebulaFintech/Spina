module Spina
  class PagesController < Spina::ApplicationController
    include Spina::Frontend
    include Spina::SessionsHelper
    include Rails.application.routes.url_helpers

    before_action :authenticate_user_with_omniauth!
    before_action :current_spina_user_can_view_page?, except: [:robots]

    helper_method :page

    def homepage
      render_with_template(page)
    end

    def show
      render_with_template(page)
    end

    private

      def current_spina_user_can_view_page?
        raise ActiveRecord::RecordNotFound unless current_carina_user.present? && current_carina_user.agent? && page.live?
      end

  end
end

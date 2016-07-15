ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    columns do
      column do
        panel "Last Rooms" do
          ul do
            Room.last(5).map do |room|
              li link_to(room.title, admin_room_path(room))
            end
          end
        end
      end

      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end
    
  end
end
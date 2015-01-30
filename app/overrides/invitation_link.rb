Deface::Override.new(virtual_path: 'spree/shared/_main_nav_bar',
                     name: 'invitation_link',
                     insert_after: '#home-link',
                     text: "<li><%= link_to('Invite a friend', custom_invitation_path) %></li>")

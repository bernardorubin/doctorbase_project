1------------------------------------------------------//
  gems
2------------------------------------------------------//
  devise setup  -> https://github.com/plataformatec/devise
3------------------------------------------------------//
  rails g controller home index
4------------------------------------------------------//
  rails g model patient first_name last_name birth_date:date gender address last_appointment:date user:references

  in the migration add      ->         , :index true in the relation
  in the model add          ->         has_many :patients

5------------------------------------------------------//
  rails g model appointment date:datetime  field1 field2 field3 field4 field5 field6 field7 field8 field9 text_field1:text text_field2:text text_field3:text text_field4:text text_field5:text text_field6:text text_field7:text patient:references

  in the migration add        ->        index true in the relation
  in the model add            ->        has_many :appointments

6------------------------------------------------------//
  rails g migration add_name_and_profession_to_user
  in migration file    ->
                def change
                  change_table :users do |t|
                    t.string :first_name, :last_name, :profession
                  end
                end

  rails db:migrate
7------------------------------------------------------//
  bootstrap config -> https://github.com/twbs/bootstrap-sass

  in navbar add
          <% if user_signed_in? %>
            <li><%= link_to current_user.display_name, "/profile" %></li>
            <li><%= link_to "logout", destroy_user_session_path, method: 'DELETE' %></li>
          <% else %>
            <li><%= link_to "login", new_user_session_path %></li>
            <li><%= link_to "signup", new_user_registration_path %> </li>
          <% end %>

8------------------------------------------------------//
  rails g controller profile index

  edit routes

  edit profile/index.html.erb

  edit profile controller

  add display_name property in user model

9------------------------------------------------------//
 rails g controller appointments index
 rails g controller patients index

 edit patients and appointments controllers

 add views for both controllers

 edit home index view

10------------------------------------------------------//
  falta
  ->  arreglar appointments como se pasan los arguments
        -> fix both forms (patients and appointments)
        -> fix both controllers (patients and appointments)

  ->  Add authorization with can can

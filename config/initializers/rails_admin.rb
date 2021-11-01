RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
     warden.authenticate! scope: :teacher
  end
   config.current_user_method(&:current_teacher)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.label_methods << :email

  config.model 'AttendingsStudent' do
    list do
        filters [:created_at, :attending_id,:student_id,:studentclasses]
        field :created_at do # (1)
          searchable false
          filterable true
        end
  
        field :attending_id do # (2)
          searchable :attending_id
          filterable true
        end

        field :student_id do # (2)
          searchable :student_id
          filterable true
        end

        field :studentclasses do # (4)
          formatted_value{ bindings[:object].student.studentclass.name }
        queryable true
        filterable true
        #searchable [:student]
        # eq. to [Team => :name, Team => :id]
        # or even [:name, Player => :team_id] will search on teams.name and players.team_id
        # if you need to specify the join association name:
        # (See #526 and http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html => table_aliasing)
        #searchable [{:teams => :name}, {:teams => :id}]
        # or
        #searchable ["teams.name", "teams.id"]
      end
    end
  end

  config.model 'MemorizationsStudent' do
    list do
        filters [:created_at, :memorization_id,:student_id,:studentclasses]
        field :created_at do # (1)
          searchable false
          filterable true
        end
  
        field :memorization_id do # (2)
          searchable :attending_id
          filterable true
        end

        field :student_id do # (2)
          searchable :student_id
          filterable true
        end

        field :studentclasses do # (4)
          formatted_value{ bindings[:object].student.studentclass.name }
        queryable true
        filterable true
        #searchable [:student]
        # eq. to [Team => :name, Team => :id]
        # or even [:name, Player => :team_id] will search on teams.name and players.team_id
        # if you need to specify the join association name:
        # (See #526 and http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html => table_aliasing)
        #searchable [{:teams => :name}, {:teams => :id}]
        # or
        #searchable ["teams.name", "teams.id"]
      end
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end


class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        cast = []
        actors.map {|actor| cast << actor.full_name}
        cast
    end
end
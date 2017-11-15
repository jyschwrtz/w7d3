
# json.extract! @guest , :name, :age , :favorite_color
json.partial! 'guest', guest: @guest

json.gifts @guest.gifts do |gift|
  # json.title gift.title

  json.(gift, :title, :description)

end

#gifts have a title and description

#
# class Api::GuestsController < ApplicationController
#   def index
#     @guests = Guest.all
#     render :index
#   end
#
#   def show
#     @guest = Guest.find_by(id: params[:id])
#     render :show
#   end
# end

#
# create_table "guests", force: :cascade do |t|
#   t.string "name", null: false
#   t.integer "age", null: false
#   t.string "favorite_color", null: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

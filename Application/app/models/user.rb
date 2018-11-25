# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string
#  password            :string
#  level               :integer
#  reputation          :string
#  role                :string
#  number_of_followers :integer
#  photo               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class User < ApplicationRecord

    has_many :questions
    has_many :answers
    has_many :comments
    has_many :documents
    has_one :statistic

    has_secure_password

    validates_length_of :password, maximum: 72, minimum: 6, allow_nil: true, allow_blank: false
    validates :name, presence: true, length: {minimum: 5}
    validates_presence_of :email
    validates_presence_of :usern
    validates_uniqueness_of :usern
    validates_uniqueness_of :email
    validates :level, presence: true
    validates :role, presence: true

    # paperclip
    has_attached_file :photo,style:{
        medium: "1280x720",
        thumb: "800x600"
    }
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

    # despues de haber sido creada la pregunta se envia un correo
    after_create :send_mail
    def send_mail
        UserMailer.new_user(self).deliver_later
    end
    #def self.username(username)
    #    User.where(usern: username)
    #end



    #Autenticacion con Facebook
    def self.from_omniauth(auth)
      where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
          user.provider = auth.provider
          user.uid = auth.uid
          user.name = auth.info.name
          user.oauth_token = auth.credentials.token
          user.oauth_expires_at = Time.at(auth.credentials.expires_at)
          user.save!
      end
  end

end

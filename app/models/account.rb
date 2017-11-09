class Account < ApplicationRecord

    validates :f_name, :age, presence: true
    validates :email, uniqueness: true, presence: true, confirmation: true
    validates :email_confirmation, presence: true
    validates :password, length: { in: 8..12 }
    # validates :gender, acceptance: { message: 'must be abided' }    

    before_validation :age_method

    after_validation :Sucessfully_validate

    before_validation :create_name, on: :create

    
    before_create :default_date

    after_create :just_created

    after_save :save_sucessfully

    before_destroy :delete_method


    after_destroy :delete_the_record

    mount_uploader :cover, CoverUploader


private


    before_create do |account|
        puts "about to create #{account.f_name}"
    end


    def age_method
        if age.blank?
            self.age = 25
        end
    end


    def Sucessfully_validate
        self.l_name = l_name.downcase
    end

    def create_name
        if f_name.blank?
            self.f_name = "default"
        end
    end


    def default_date
        self.date = Date.yesterday
     end

     def just_created
        puts "just created a account"
    end


    

    def save_sucessfully
        puts "data is saved sucessfully"
    end


    def delete_method
        if l_name.blank?
            puts "last name is not there"
        end
    end



    def delete_the_record
        if self.present?
            puts "... happy path"
          else
            puts "... sad path"
          end
    end
end
